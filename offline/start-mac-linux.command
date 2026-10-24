#!/bin/sh
# 在這台電腦啟動本機伺服器並開啟 OCR 單據分類（需要 python3，macOS 內建或可安裝）
cd "$(dirname "$0")"
PORT=8765
( sleep 1; (open "http://localhost:$PORT/index.html" 2>/dev/null || xdg-open "http://localhost:$PORT/index.html") ) &
echo "OCR 單據分類：http://localhost:$PORT/index.html （用完按 Ctrl+C 結束）"
python3 -m http.server $PORT --bind 127.0.0.1
