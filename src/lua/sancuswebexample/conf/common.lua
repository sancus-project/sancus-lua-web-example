local utils = require"sancus.utils"
local dispatcher = require"sancus.web.dispatcher"

local _M = { _NAME = ... }
setfenv(1, _M)

-- don't buffer stdout
utils.stdout_buf("no")

urls = dispatcher.PathMapper{logger=true}
errors = {} -- error handlers

return _M
