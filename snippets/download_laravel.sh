#!/bin/bash

VERSION=${1:-latest}
DESTINATION=${2:-src}

if [ "$VERSION" == "latest" ]; then
    VERSION=$(curl -s "https://github.com/laravel/laravel/releases/$VERSION" | grep -Po "(?<=tag\/v)[0-9\.]+" || true)
    if [ -z "$VERSION" ]; then
        echo "Error: cannot find latest version of $SOURCE"
        exit 1
    fi
echo "Notice: using latest version $VERSION"
fi

URL="https://github.com/${SOURCE}/archive/refs/tags/v${VERSION}.tar.gz"

tempdir=$(mktemp -d)

wget -O $tempdir/laravel.tar.gz $URL
tar --strip-components=1 -xzf $tempdir/download.tar.gz -C "$(pwd)/$DESTINATION"

echo "Downloaded laravel version $VERSION"
exit 0
