#/bin/bash

# ICO

inkscape -w 16 -h 16 -o hexamc_16.png org.hexamc.HexaMC.svg
inkscape -w 24 -h 24 -o hexamc_24.png org.hexamc.HexaMC.svg
inkscape -w 32 -h 32 -o hexamc_32.png org.hexamc.HexaMC.svg
inkscape -w 48 -h 48 -o hexamc_48.png org.hexamc.HexaMC.svg
inkscape -w 64 -h 64 -o hexamc_64.png org.hexamc.HexaMC.svg
inkscape -w 128 -h 128 -o hexamc_128.png org.hexamc.HexaMC.svg

convert hexamc_128.png hexamc_64.png hexamc_48.png hexamc_32.png hexamc_24.png hexamc_16.png hexamc.ico

rm -f hexamc_*.png

inkscape -w 1024 -h 1024 -o hexamc_1024.png org.hexamc.HexaMC.bigsur.svg

mkdir hexamc.iconset

sips -z 16 16     hexamc_1024.png --out hexamc.iconset/icon_16x16.png
sips -z 32 32     hexamc_1024.png --out hexamc.iconset/icon_16x16@2x.png
sips -z 32 32     hexamc_1024.png --out hexamc.iconset/icon_32x32.png
sips -z 64 64     hexamc_1024.png --out hexamc.iconset/icon_32x32@2x.png
sips -z 128 128   hexamc_1024.png --out hexamc.iconset/icon_128x128.png
sips -z 256 256   hexamc_1024.png --out hexamc.iconset/icon_128x128@2x.png
sips -z 256 256   hexamc_1024.png --out hexamc.iconset/icon_256x256.png
sips -z 512 512   hexamc_1024.png --out hexamc.iconset/icon_256x256@2x.png
sips -z 512 512   hexamc_1024.png --out hexamc.iconset/icon_512x512.png
cp hexamc_1024.png hexamc.iconset/icon_512x512@2x.png

iconutil -c icns hexamc.iconset

rm -f hexamc_*.png
rm -rf hexamc.iconset

for dir in ../launcher/resources/*/scalable
do
    cp -v org.hexamc.HexaMC.svg $dir/launcher.svg
done
