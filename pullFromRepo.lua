local r = http.get("https://raw.githubusercontent.com/DonWager/cc.gg/main/filename")
if not r then error("http failed") end
local s = r.readAll(); r.close()
local f = fs.open("startup.lua","w"); f.write(s); f.close()
