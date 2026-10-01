-- Name-set manifest, laid out like the base game's own
-- names/england/england.names.lua. The game discovers any
-- names/<set>/<set>.names.lua file and lists it in the new-game "Names" box.
--
-- Town and street names go through the base game's shared generators, which
-- load "<modId>::/names/<path>/<lang>/towns.lua" - so modId must be set or
-- they would look inside the base game instead of this mod. Person names use
-- this mod's own generator (welsh.script.lua), since the base game's person
-- generator can only read its built-in name pools.
function data()
return
	{
		name = _("Welsh"),
		personNamesScript = {
			fileName = "welsh.script@personNameScriptFn",
			params = {
			}
		},
		townNamesScript = {
			fileName = "::/names/names.script@townsNameScriptFn",
			params = {
				languages = {
					en = "en",
					fallback = "en",
				},
				path = "welsh",
				modId = "welsh_place_names_1"
			}
		},
		streetNamesScript = {
			fileName = "::/names/names.script@streetsNameScriptFn",
			params = {
				languages = {
					en = "en",
					fallback = "en",
				},
				path = "welsh",
				modId = "welsh_place_names_1"
			}
		},
	}
end
