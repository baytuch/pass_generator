#!/bin/sh

dd if=/dev/random of=rand_file count=512
md5sum rand_file | cut -b 1-$((18 + $(dd if=/dev/random count=1 bs=1 status=none | od -An -i) / 51)) > pass.txt
rm -f rand_file
