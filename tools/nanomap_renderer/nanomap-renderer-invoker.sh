#!/bin/bash
set -e
# Generate maps
tools/nanomap_renderer/nanomap-renderer minimap --w 2040 --h 2040 "./_maps/map_files/Birdshot/birdshot.dmm"
tools/nanomap_renderer/nanomap-renderer minimap --w 2040 --h 2040 "./_maps/map_files/Deltastation/DeltaStation2.dmm"
tools/nanomap_renderer/nanomap-renderer minimap --w 2040 --h 2040 "./_maps/map_files/IceBoxStation/IceBoxStation.dmm"
tools/nanomap_renderer/nanomap-renderer minimap --w 2040 --h 2040 "./_maps/map_files/MetaStation/MetaStation.dmm"
tools/nanomap_renderer/nanomap-renderer minimap --w 2040 --h 2040 "./_maps/map_files/NorthStar/north_star.dmm"
tools/nanomap_renderer/nanomap-renderer minimap --w 2040 --h 2040 "./_maps/map_files/tramstation/tramstation.dmm"
# Move and rename files so the game understands them
cd "data/nanomaps"
mv "birdshot-1.png" "Birdshot Station_nanomap_z1.png"
mv "DeltaStation2-1.png" "Delta Station_nanomap_z1.png"
mv "IceBoxStation-1.png" "Ice Box Station_nanomap_z1.png"
mv "MetaStation-1.png" "Meta Station_nanomap_z1.png"
mv "north_star-1.png" "NorthStar_nanomap_z1.png"
mv "tramstation-1.png" "Tramstation_nanomap_z1.png"
cd "../../"
cp "data/nanomaps/Birdshot Station_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Delta Station_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Ice Box Station_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Meta Station_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/NorthStar_nanomap_z1.png" "icons/_nanomaps"
cp "data/nanomaps/Tramstation_nanomap_z1.png" "icons/_nanomaps"
