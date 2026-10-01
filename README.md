# Welsh Place Names

A Transport Fever 3 name-set mod that adds "Welsh" as a selectable town-naming
option when starting a new game. Real Welsh place names throughout, including
the full-length **Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch**.

## What's in it

- **Towns** (628 real places): every corner of Wales - the cities, the
  Valleys, market towns, seaside resorts and small villages, from Holyhead to
  Chepstow and St Davids to Prestatyn. Includes the real towns and villages
  along the Talyllyn, Corris, Ffestiniog and Welsh Highland heritage railways.
- **Streets** (204 names): genuine Welsh street names using authentic road
  vocabulary (Stryd/Heol/Ffordd/Lôn/Rhodfa/Maes/Bryn/Cae/Glan/Llys/Teras/
  Cilgant/Clos), not a reused English pool.
- **Person names**: 230 Welsh first names (Gareth, Dafydd, Gethin, Rhiannon,
  Angharad...) and 90 surnames common in Wales (Jones, Davies, Pritchard,
  Bowen...), from this mod's own generator.

## Installing

Subscribe on mod.io, or for local testing copy this folder to
`<Steam userdata>/<id>/3493540/local/staging_area/welsh_place_names_1/`.
Activate it, start a New Game and pick **Welsh** in the **Names** box. Name
sets are chosen when creating a new map - they aren't switchable mid-save.

You can check the mod with the game's own validator (run from the game folder):

    SteamAppId=3493540 ./run.sh --validate StagingArea,welsh_place_names_1 out.json

## Mechanism

Laid out like the base game's own `names/england/`: the game discovers
`content/names/welsh/welsh.names.lua` and lists it in the Names box.

- Towns and streets use the base game's shared
  `::/names/names.script@...` generators. These load
  `<modId>::/names/<path>/<lang>/towns.lua`, so the manifest passes
  `modId = "welsh_place_names_1"` and `path = "welsh"`.
- Person names use `welsh.script.lua`, which reads `en/person.lua`; the base
  game's person generator can only read its built-in pools.
- Paths in `_content.json` are relative to `content/`.

See [CHANGELOG.md](CHANGELOG.md) for version history.
