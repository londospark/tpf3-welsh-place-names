# Changelog

## 1.1.0 - 2026-10-01

### Fixed
- **"Welsh" now actually appears in the new-game Names box.** The mod's file
  index pointed at `content/content/names/...`, so the game couldn't find the
  name set and silently skipped it.
- Town and street names now come from this mod. The name set was missing its
  `modId`, so even once loaded it would have looked for the lists inside the
  base game.

### Added
- **Welsh resident names**: 126 male and 104 female Welsh first names (Gareth,
  Dafydd, Gethin, Iolo, Rhiannon, Angharad, Myfanwy...) and 90 surnames common
  in Wales (Jones, Davies, Pritchard, Bowen, Vaughan, Llewellyn...), replacing
  the generic UK pool.
- **Many more towns**: 628 real Welsh cities, towns and villages (up from 158),
  covering all of Wales.
- **Many more streets**: 204 Welsh street names (up from 32), adding terraces
  (Teras), crescents (Cilgant), closes (Clos), rows (Rhes) and more.

### Changed
- Town names are now only real towns and villages. Rivers, lakes, sidings and
  station-only names ("Afon Dyfi", "Quarry Siding", "Halfway"...) are gone.
- Files reorganised to match the base game's own name sets
  (`names/welsh/welsh.names.lua`, `names/welsh/en/*.lua`).

## 1.0.0 - 2026-09-30

- First release: 158 Welsh towns, villages, heritage-railway stations and
  water features, plus 32 Welsh street names.
