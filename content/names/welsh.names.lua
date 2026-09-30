-- Name-set manifest, format confirmed from the base game's own
-- names/england/england.names.lua: reuses the shared base-game
-- /names/names.script@<fn> generators, pointed at this mod's own town-name
-- and street-name paths. Person names still reuse the base game's
-- unitedKingdom pool - Welsh personal-name generation is a much bigger
-- undertaking than street/town lists and out of scope here.
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
				path = "welsh_place_names_1_streets"
			}
		},
	}
end
