#!/bin/bash

curl -O https://raw.githubusercontent.com/maliwen2015/ffmpeg_cavs_dra/refs/heads/main/ffmpeg-7.1.2_cavs_dra.patch

# fix bug
sed -i 's/18562/18555/' ffmpeg-7.1.2_cavs_dra.patch

patch -p2 < ffmpeg-7.1.2_cavs_dra.patch

echo "patch: ffmpeg-7.1.2_cavs_dra.sh done!"
