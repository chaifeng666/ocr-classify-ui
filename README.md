# OCR 會計單據分類

OCR 辨識後，先把會計單據分類（銀行帳號、發票、收據、水費、電費、電話費、高鐵、火車、計程車），再核對欄位並匯出。

- 線上使用：https://chaifeng666.github.io/ocr-classify-ui/
- 所有處理都在瀏覽器裡完成，檔案不會上傳到伺服器。畫面上的示範資料全部是假資料，機關名稱一律顯示「OOO單位」。

## 進度

| 步驟 | 狀態 | 內容 |
|---|---|---|
| 1 上傳檔案 | ✅ 完成 | 本機選檔、拖放、貼上圖片（Ctrl+V）、Google Drive、OneDrive |
| 2 OCR 辨識 | 🔧 部分 | 辨識設定（語言、版面、PDF 解析度、前處理、待確認門檻）可儲存；OCR 本身開發中 |
| 3 單據分類 | 🔧 部分 | 分類畫面、改分類、批次改分類、刪除未分類；自動分類開發中（目前用示範資料） |
| 4 欄位核對 | 🔧 部分 | 依類別的欄位表格；欄位擷取開發中 |
| 5 匯出／帶入 | ✅ 完成 | 分類 Excel、匯出GBA受款XML（一位受款人多張發票、從帳戶清冊選帳號、刪除受款人、檢核）、差旅費明細、帳戶清冊 |

## 離線版

不用連網路的版本：執行 `tools/build-offline.sh` 產生 `dist/OCR-classify-offline.zip`（Windows 雙擊 `start-windows.bat` 開啟）。離線版不載入任何外部網址，字型改用電腦內建字型。

## 說明文件

- 軟體物料清單（SBOM，確認沒有中國大陸來源元件）：[sbom/SBOM.md](sbom/SBOM.md)、[CycloneDX JSON](sbom/sbom.cdx.json)、[Excel](sbom/SBOM.xlsx)

- Google Drive／OneDrive 金鑰申請：[SETUP.md](SETUP.md)
- Excel 匯出使用 [SheetJS](https://sheetjs.com/)（Apache 2.0，放在 `lib/`）。
