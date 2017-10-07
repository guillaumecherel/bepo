# Bépo mappings for Kakoune

Usage: load one of the mappings in your kakrc:

    source ~/.config/kak/map-bepo.kak
    
`map-bepo.kak` contains the mappings to preserve the position of the commands in normal, goto and view mode when using a bépo keyboard layout as they are on a qwerty layout. For example, the move keys are remapped from hjkl to ctsr.

`map-bepo-movekeys.kak` additionally shifts the move keys right so they are on the fingers natural position (tsrn on the bépo layout).

# Generate other mappings (Dvorak, ...)

Copy the file `map-bepo.awk` to `your-mapping.awk` and edit the array `remap` to match your mapping, then run:

    awk -f gen-map.awk -f your-mapping.awk commands.csv > your-mapping.kak


