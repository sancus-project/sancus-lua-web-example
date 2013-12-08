local utils = require"sancus.utils"
local stderr, sibling_modules = utils.stderr, utils.sibling_modules

local ipairs, require = ipairs, require

local _M = { _NAME = ... }
setfenv(1, _M)

-- load submodules
--
for _,x in ipairs(sibling_modules()) do
	local s = ("%s.%s"):format(_NAME, x)

	stderr("loading %s\n", s)
	_M[x] = require(s)
end

return _M
