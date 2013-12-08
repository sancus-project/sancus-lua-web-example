-- safeguard io.stdout
local utils = require"sancus.utils"

local fastcgi = require"wsapi.fastcgi"
local app = require"sancuswebexample"

-- Initialize the pseudo random number generator
math.randomseed(os.time())
math.random(); math.random(); math.random()

fastcgi.run(app.run)
