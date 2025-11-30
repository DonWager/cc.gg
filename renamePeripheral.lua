-- arg[1] is old name, arg[2] is new name
local function rename()
  local old = arg[1]
  local new = arg[2]
  if type(old) ~= "string" or type(new) ~= "string" then
    error("old and new names must be strings")
  end

  local p = peripheral.wrap(old)
  if not p then error("no peripheral named "..old) end
  peripheral.add(old, new)
  return true
end

local success, message = pcall(rename)

if success then
  print(arg[1].." renamed to "..arg[2])
else
  print("Error: "..tostring(message))
end
