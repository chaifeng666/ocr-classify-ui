OCR 會計單據分類（離線版）
==========================

這是 https://chaifeng666.github.io/ocr-classify-ui/ 的離線版。不用連網路就能使用，
所有檔案只在這台電腦的瀏覽器裡處理，不會上傳。

【怎麼開啟】
  Windows：雙擊 start-windows.bat，瀏覽器會自動打開 http://localhost:8765/
           （黑色視窗使用期間不要關，用完直接關掉即可）
  Mac／Linux：雙擊 start-mac-linux.command（需要 python3）
  請一定要用上面的方式（localhost）開啟：真實檔案的 OCR 辨識、Google Drive、OneDrive
  都需要這樣開。直接雙擊 index.html 只能看示範資料。

【離線版與網路版的差別】
  1. 不載入 Google Fonts，改用電腦內建字型（Windows：微軟正黑體）。
  2. OCR 引擎（Tesseract）、繁中／英文語言資料、PDF.js、SheetJS 都已放在 lib/，不需連網。
  3. Google Drive／OneDrive 選檔本來就要連網；若要在離線版使用，
     需在 Google／Microsoft 後台把 http://localhost:8765 加進允許的網址（見 SETUP.md）。

【內容】
  index.html               主程式
  lib/tesseract.min.js、worker.min.js、core/   Tesseract.js 5.1.1（Apache-2.0，美國）
  lib/lang/                chi_tra、eng 語言資料（Apache-2.0，Google）
  lib/pdf.min.js、pdf.worker.min.js、cmaps/     PDF.js 3.11.174（Apache-2.0，Mozilla）
  lib/xlsx.full.min.js     SheetJS 0.18.5（Apache-2.0，美國 SheetJS LLC）
  start-windows.bat        Windows 啟動檔
  server.ps1               Windows 本機伺服器（只接受本機連線）
  start-mac-linux.command  Mac／Linux 啟動檔
  SETUP.md                 Google Drive／OneDrive 金鑰申請教學
  SBOM.md                  軟體物料清單（確認沒有中國大陸來源元件）
