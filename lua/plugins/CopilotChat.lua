return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log, and async functions
    },
    opts = function()
      local select = require('CopilotChat.select')

      return {
        debug = true, -- Enable debugging
        auto_follow_cursor = false,
        insert_at_end = false,
        show_help = false,

        -- プロンプトの設定
        -- デフォルトは英語なので日本語でオーバーライドしています
        prompts = {
          Explain = {
            prompt = "/COPILOT_EXPLAIN 日本語で説明してください",
          },
          Fix = {
            prompt = '/COPILOT_GENERATE このコードには問題があります。バグを修正したコードに書き直してください。',
          },
          Optimize = {
            prompt = '/COPILOT_GENERATE 選択されたコードをパフォーマンスと可読性の向上を目指して最適化してください。',
          },
          Docs = {
            prompt = '/COPILOT_GENERATE 選択されたコードに対してコメントを追加してください。',
          },
          Tests = {
            prompt = '/COPILOT_GENERATE このコードのテストを生成してください。',
          },
          FixDiagnostic = {
            prompt = '次のエラーを説明して、コードを修正してください',
            selection = select.diagnostics,
          },
          Praise = { -- コード褒め
            prompt = '/COPILOT_EXPLAIN 次のコードを見て、良い点を妹になりきって説明してください:',
            selection = select.buffer,
          },
          Question = {
            prompt = '次のコードについて質問します',
            selection = select.buffer,
          },
          Chat = {
            prompt = 'いくつか聞きたいことがあります',
          },
        },
        window = {
          width = 0.4,
          border = 'rounded',
          title = 'Copilot Chat',
          footer = nil,
        },
        mappings = {
          complete = {
            detail = '<C-0>',
            insert = '<C-0>',
          },
          close = {
            normal = '<Esc>',
            insert = '<Esc>',
          },
          reset = {
            normal = '<C-r>',
            insert = '<C-r>',
          },
        },
      }
    end,

    config = function()
      -- バッファの内容全体を使って Copilot とチャットする
      function CopilotChatBuffer()
        local input = vim.fn.input("Quick Chat: ")
        if input ~= "" then
          require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
        end
      end

      -- telescope を使ってアクションプロンプトを表示する
      function ShowCopilotChatActionPrompt()
        local actions = require("CopilotChat.actions")
        require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
      end

      require("CopilotChat").setup {
        -- Additional setup can go here if needed
      }
    end,
  },
}
