return {
  "nvim-neotest/neotest",
  name = "Neotest",
  cond = false,
  cmd = {
    "RunTests",
    "Neotest"
  },
  dependencies = {
    {
      "haydenmeade/neotest-jest",
      name = "Neotest-Jest"
    },
    {
      "nvim-lua/plenary.nvim",
      name = "Plenary"
    },
    {
      "antoinemadec/FixCursorHold.nvim",
      name = "CursorHold"
    },
  },
  config = function ()
    require('neotest').setup({
      adapters = {
        require('neotest-jest')({
          jestCommand = "yarn test",
        }),
      }
    })

    vim.api.nvim_create_user_command('RunTests', function ()
      local neotest = require("neotest")
      local timer = vim.loop.new_timer()

      local run = function ()
        neotest.run.run({
          suite = true
        })
      end

      neotest.summary.open()
      timer:start(300, 0, vim.schedule_wrap(run))
    end, {})
  end
}
