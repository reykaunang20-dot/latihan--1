#!/bin/bash

DOCS="documents"
IMGS="images"
ARCHS="archives"
LOGS="logs"

find . -maxdepth 1 -type f -name "*.docs" -exec mv {} $DOCS/ \;
find . -maxdepth 1 -type f -name "*.jpg" -exec mv {} $IMGS/ \;
find . -maxdepth 1 -type f -name "*.zip" -exec mv {} $ARCHS/ \;
find . -maxdepth 1 -type f -name "*.log" -exec mv {} $LOGS/ \;

echo "Organisasi file selesai!"
