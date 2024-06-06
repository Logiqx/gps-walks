# Project Env
. $(dirname $0)/env.sh

# Create KMZ file
cd $PROJ_DIR/data/kml
zip -9 walks.kmz walks.kml
mv walks.kmz ../kmz
