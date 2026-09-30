-- Name-set manifest, format confirmed from the base game's own
-- names/england/england.names.lua: reuses the shared base-game
-- /names/names.script@<fn> generators, pointed at this mod's own town-name
-- path for town names, while reusing the base game's existing England
-- street-name and UK person-name pools (Wales uses UK naming conventions
-- for streets/people; only settlement names are Welsh-specific here).
function data()
return
	{
		name = "Welsh",
		personNamesScript = {
			fileName = "/names/names.script@personNameScriptFn",
			params = {
				path = "unitedKingdom"
			}
		},
		townNamesScript = {
			fileName = "/names/names.script@townsNameScriptFn",
			params = {
				languages = {
					en = "en",
					fallback = "en",
				},
				path = "welsh_place_names_1_towns"
			}
		},
		streetNamesScript = {
			fileName = "/names/names.script@streetsNameScriptFn",
			params = {
				languages = {
					en = "en",
					fallback = "en",
				},
				path = "england"
			}
		},
	}
end
