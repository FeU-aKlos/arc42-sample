###
# PREPARE
###
bash init.sh
bash scripts/prepare.sh
curl -Lo dtcw doctoolchain.github.io/dtcw
bash dtcw install doctoolchain

###
# EXPORT
###

echo "==========================="
echo "  start publishToConfluence"
echo "==========================="

bash dtcw publishToConfluence -PbearerToken="$ARC42_EXPORT_CONFLUENCE_USER_BEARER" -PconfluenceUser="$ARC42_EXPORT_CONFLUENCE_USER_EMAIL" -PconfluencePass="$ARC42_EXPORT_CONFLUENCE_USER_PAT" --info

###
# CLEAN
###
bash scripts/cleanup.sh
