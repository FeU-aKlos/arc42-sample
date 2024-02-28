#!/bin/bash

echo "==========================="
echo "  start publishToConfluence"
echo "==========================="

bash dtcw publishToConfluence -PbearerToken="$ARC42_EXPORT_CONFLUENCE_USER_BEARER" -PconfluenceUser="$ARC42_EXPORT_CONFLUENCE_USER_EMAIL" -PconfluencePass="$ARC42_EXPORT_CONFLUENCE_USER_PAT" --info
