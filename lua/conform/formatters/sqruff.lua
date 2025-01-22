local util = require("conform.util")

---@type conform.FileFormatterConfig
return {
  meta = {
    url = "https://github.com/quarylabs/sqruff",
    description = "sqruff is a SQL linter and formatter written in Rust.",
  },
  command = "sqruff",
  args = { "fix", "-" },
  cwd = util.root_file({
    -- https://github.com/quarylabs/sqruff/tree/main#configuration
    ".sqruff",
  }),
  require_cwd = true,
}
