local require = require
local resource = require"sancus.web.resource"

local _M = { _NAME = ... }
setfenv(1, _M)

common = require(_NAME .. ".common")

function make_app()
	local app = resource.MinimalMiddleware(common.urls, common.errors)
	return app
end

return _M
