local require = require

local _M = { _NAME = ... }
setfenv(1, _M)

-- submodules
conf = require(_NAME .. ".conf")
model = require(_NAME .. ".model")
web = require(_NAME .. ".web")

run = conf.make_app()

return _M
