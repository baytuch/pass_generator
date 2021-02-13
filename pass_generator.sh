#!/bin/sh

dd if=/dev/random of=rand_file count=512
md5sum rand_file | cut -b 1-18 > pass.txt
rm -f rand_file
