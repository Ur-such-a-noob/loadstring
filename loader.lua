https://raw.githubusercontent.com/Ur-such-a-noob/loadstring/main/iy..lua
local http = require("socket.http")

-- URLs to the raw scripts on GitHub
local script1_url = "https://raw.githubusercontent.com/Ur-such-a-noob/loadstring/main/iy..lua"
local script2_url = "https://raw.githubusercontent.com/Ur-such-a-noob/loadstring/main/resize.lua"
local script3_url = "https://raw.githubusercontent.com/Ur-such-a-noob/loadstring/main/unvoid.lua"
local script4_url = "https://raw.githubusercontent.com/username/repository/branch/basegen.lua"

-- Function to load and execute a script from a URL
local function load_script_from_url(url)
    local response, status_code = http.request(url)
    if status_code == 200 then
        local func = loadstring(response)
        if func then
            func()
        else
            print("Failed to load script from URL: " .. url)
        end
    else
        print("Failed to fetch script from URL: " .. url .. " with status code: " .. status_code)
    end
end

-- Load and execute each script
load_script_from_url(script1_url)
load_script_from_url(script2_url)
load_script_from_url(script3_url)
load_script_from_url(script4_url)
