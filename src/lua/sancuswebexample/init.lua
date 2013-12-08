local require = require

local _M = { _NAME = ... }
setfenv(1, _M)

-- submodules
conf = require(_NAME .. ".conf")

run = conf.make_app()

return _M
