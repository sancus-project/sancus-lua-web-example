-- safeguard io.stdout
local utils = require"sancus.utils"

local fastcgi = require"wsapi.fastcgi"
local app = require"sancuswebexample"

fastcgi.run(app.run)
