#!/bin/sh
RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/getzola/zola/releases/latest | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/' | cut -c 1-)
curl -L https://github.com/getzola/zola/releases/download/${RELEASE}/zola-${RELEASE}-x86_64-unknown-linux-gnu.tar.gz | gunzip | tar x
sudo mv zola /usr/bin/zola
