# Welsh Place Names

A Transport Fever 3 name-set mod that adds "Welsh" as a selectable town-naming
option when starting a new game. Real Welsh place names throughout, including
the full-length **Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch**.

## What's in it

- **Towns** (158 real names): major Welsh towns and cities; a dedicated
  focus on real station/hamlet names along four North/Mid Wales heritage
  railways - the Talyllyn Railway (Tywyn to Nant Gwernol), the Corris
  Railway (Machynlleth to Aberllefenni), the Ffestiniog Railway (Porthmadog
  to Blaenau Ffestiniog), the Welsh Highland Railway (Caernarfon to
  Porthmadog), and the Great Orme Tramway (Llandudno); plus the coastal
  areas around Llandudno (Deganwy, Llandudno Junction, Penrhyn Bay,
  Rhos-on-Sea) and Llansteffan on the Tywi/Taf estuary (Ferryside,
  Llangain, Llanybri, Llansaint, Kidwelly, Laugharne, St Clears,
  Carmarthen, Pembrey, Pendine).
- **Lakes and rivers**: real Welsh water features concentrated around those
  same four railway corridors (e.g. Llyn Mwyngil/Talyllyn Lake, Afon Dyfi,
  Aberglaslyn), folded into the town-name pool since the game's name-set
  system has no separate water-name category.
- **Streets**: genuine Welsh street names using authentic road vocabulary
  (Stryd/Heol/Ffordd/Lôn/Rhodfa/Maes/Bryn/Cae/Glan/Llys/Ffynnon), not a
  reused English pool.
- **Person names**: reuse the base game's own `unitedKingdom` pool, since
  Wales uses UK naming conventions for people.

## Installing

Copy this folder into your Transport Fever 3 local mods staging area, then
activate it from the in-game Mod Hub. Name sets are chosen when creating a
new map - they aren't switchable mid-save.

## Mechanism

Built on the same name-set manifest format used by the base game's own
`names/england/england.names.lua`: a `content/names/welsh.names.lua`
descriptor pointing `townNamesScript` and `streetNamesScript` at this mod's
own flat name lists (`content/names/welsh_place_names_1_towns/en/towns.lua`
and `content/names/welsh_place_names_1_streets/en/streets.lua`), while
`personNamesScript` reuses the base game's own `unitedKingdom` pool via the
shared `/names/names.script@...` generators. No custom Lua logic needed
beyond the manifest and the name lists themselves.
