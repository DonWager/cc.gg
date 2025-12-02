-- Hoppelichter Bsp.: "Redstone" = {row="front",pos="3",dir="left",light=peripheral.wrap(minecraft:redstone_light_2)}
local hopperLights = {
    Inferium_1 = {row="front",pos="1",dir="left",light=peripheral.wrap("redstone_relay_1")},
    Inferium_2 = {row="front",pos="1",dir="left",light=peripheral.wrap("redstone_relay_1")},
    Inferium_3 = {row="front",pos="2",dir="right",light=peripheral.wrap("redstone_relay_1")},
    Inferium_4 = {row="front",pos="2",dir="left",light=peripheral.wrap("redstone_relay_1")}
}
-- Init von allen Lampen
local frontRow = {

}
local middleLight = {}
local leftRow = {}
local rightRow = {}
local backRow = {}

-- Autocomplete Function
function autocomplete(input)
    local suggestions = {}
    for name, data in ipairs(hopperLights) do
        if string.sub(name, 1, string.len(input)) == input then
            table.insert(suggestions, name)
        end
    end
    return suggestions
end

function readAutocomplete()
    local input = ""
    while true do
        local event, key = os.pullEvent("char")
        if key == "\n" then break end
        input = input .. key
        term.write(key) -- Echo the character

        -- Get suggestions
        local suggestions = autocomplete(input)
        if #suggestions > 0 then
            for _, suggestion in ipairs(suggestions) do
                term.write(suggestion .. "\n")
            end
            term.write("\n" .. prompt .. input) -- Reprint the prompt with current input
        end
    end
end

function main()
    while true do
        local query = readAutoComplete()
    end
end

main()
