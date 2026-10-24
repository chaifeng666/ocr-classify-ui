OCR 會計單據分類（離線版）
==========================

這是 https://chaifeng666.github.io/ocr-classify-ui/ 的離線版。不用連網路就能使用，
所有檔案只在這台電腦的瀏覽器裡處理，不會上傳。

【怎麼開啟】
  Windows：雙擊 start-windows.bat，瀏覽器會自動打開 http://localhost:8765/
           （黑色視窗使用期間不要關，用完直接關掉即可）
  Mac／Linux：雙擊 start-mac-linux.command（需要 python3）
  也可以直接雙擊 index.html 開啟；但「Google Drive」「OneDrive」按鈕
  需要用上面的方式（localhost）開啟才能用。

【離線版與網路版的差別】
  1. 不載入 Google Fonts，改用電腦內建字型（Windows：微軟正黑體）。
  2. Excel 匯出用的 SheetJS 已放在 lib/，不需連網。
  3. Google Drive／OneDrive 選檔本來就要連網；若要在離線版使用，
     需在 Google／Microsoft 後台把 http://localhost:8765 加進允許的網址（見 SETUP.md）。

【內容】
  index.html               主程式
  lib/xlsx.full.min.js     SheetJS 0.18.5（Apache-2.0，美國 SheetJS LLC）
  lib/xlsx.LICENSE         SheetJS 授權條款
  start-windows.bat        Windows 啟動檔
  server.ps1               Windows 本機伺服器（只接受本機連線）
  start-mac-linux.command  Mac／Linux 啟動檔
  SETUP.md                 Google Drive／OneDrive 金鑰申請教學
  SBOM.md                  軟體物料清單（確認沒有中國大陸來源元件）
