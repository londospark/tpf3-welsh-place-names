# Welsh Place Names

A Transport Fever 3 name-set mod that adds "Welsh" as a selectable town-naming
option when starting a new game. Real Welsh place names throughout,
including the full-length **Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch**.

Street names and person names reuse the base game's existing England/United
Kingdom pools, since only settlement names are Welsh-specific here.

## Installing

Copy this folder into your Transport Fever 3 local mods staging area, then
activate it from the in-game Mod Hub. Name sets are chosen when creating a
new map - they aren't switchable mid-save.

## Mechanism

Built on the same name-set manifest format used by the base game's own
`names/england/england.names.lua`: a `content/names/welsh.names.lua`
descriptor pointing `townNamesScript` at this mod's own flat town-name list
(`content/names/welsh_place_names_1_towns/en/towns.lua`), while
`personNamesScript`/`streetNamesScript` reuse the base game's own
`unitedKingdom`/`england` pools via the shared `/names/names.script@...`
generators. No custom Lua logic needed beyond the manifest and the name
list itself.
