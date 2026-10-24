#!/bin/sh
# 產生離線版 ZIP：dist/OCR-classify-offline.zip
# 離線版不載入 Google Fonts，改用電腦內建字型；其餘與網路版相同。
set -e
cd "$(dirname "$0")/.."
OUT=dist/OCR-classify-offline
rm -rf dist && mkdir -p "$OUT/lib"
sed -e '/fonts.googleapis.com/d' -e '/fonts.gstatic.com/d' \
    -e 's/"Noto Sans TC","Microsoft JhengHei","PingFang TC",system-ui/"Microsoft JhengHei","LiHei Pro",system-ui/' \
    index.html > "$OUT/index.html"
cp -r lib/. "$OUT/lib/"
cp offline/README.txt offline/start-windows.bat offline/server.ps1 offline/start-mac-linux.command SETUP.md "$OUT/"
[ -f sbom/SBOM.md ] && cp sbom/SBOM.md "$OUT/"
chmod +x "$OUT/start-mac-linux.command"
(cd dist && zip -qr OCR-classify-offline.zip OCR-classify-offline)
echo "dist/OCR-classify-offline.zip"
