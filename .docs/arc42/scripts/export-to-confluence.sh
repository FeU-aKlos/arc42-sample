###
# PREPARE
###
chmod +x ./init.sh
./init.sh

chmod +x ./scripts/prepare.sh
./scripts/prepare.sh

curl -Lo dtcw doctoolchain.github.io/dtcw
chmod +x ./dtcw

./dtcw install doctoolchain

###
# EXPORT
###

echo "==========================="
echo "  start publishToConfluence"
echo "==========================="

./dtcw publishToConfluence -PbearerToken="$ARC42_EXPORT_CONFLUENCE_USER_BEARER" -PconfluenceUser="$ARC42_EXPORT_CONFLUENCE_USER_EMAIL" -PconfluencePass="$ARC42_EXPORT_CONFLUENCE_USER_PAT" --info

###
# CLEAN
###
chmod +x  ./scripts/cleanup.sh
./scripts/cleanup.sh
