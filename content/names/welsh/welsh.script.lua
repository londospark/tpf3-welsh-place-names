-- Welsh person-name generator. Same shape as the base game's
-- names/names.script.lua personNameScriptFn, but reads this mod's own
-- first-name and surname pools from en/person.lua.
local persons = require "en/person.lua"

function data()
return {
	personNameScriptFn = function(captureParams, params)
		local n = persons[params.lang] or persons.en
		local firstNames = params.isMale and n.firstNamesMale or n.firstNamesFemale
		return firstNames[math.random(#firstNames)] .. " " .. n.lastNames[math.random(#n.lastNames)]
	end,
}
end
