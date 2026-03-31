vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function(ev)
    if vim.g.sync_enabled == false then return end
    local ok, sync_targets = pcall(require, "config.sync_targets")
    if not ok then return end
    local file = vim.fn.fnamemodify(ev.file, ":p")
    for local_root, remote in pairs(sync_targets) do
      if file:sub(1, #local_root) == local_root then
        local dest = remote .. file:sub(#local_root + 1)
        vim.fn.jobstart({
          "rsync", "-az",
          "--exclude=vendor/",
          "--exclude=node_modules/",
          "--exclude=.git/",
          file, dest
        }, {
          on_exit = function(_, code)
            if code ~= 0 then
              vim.notify("Sync FAILED: " .. dest, vim.log.levels.ERROR)
            end
          end
        })
        vim.notify("Synced: " .. file:gsub(local_root .. "/", ""))
        break
      end
    end
  end,
})

return {}
