# OCR 會計單據分類

OCR 辨識後，先把會計單據分類（銀行帳號、發票、收據、水費、電費、電話費、高鐵、火車、計程車），再核對欄位並匯出。

- 線上使用：https://chaifeng666.github.io/ocr-classify-ui/
- 所有處理都在瀏覽器裡完成，檔案不會上傳到伺服器。畫面上的示範資料全部是假資料，機關名稱一律顯示「OOO單位」。

## 進度

| 步驟 | 狀態 | 內容 |
|---|---|---|
| 1 上傳檔案 | ✅ 完成 | 本機選檔、拖放、貼上圖片（Ctrl+V）、Google Drive、OneDrive |
| 2 OCR 辨識 | ✅ 完成 | 可選真實檔案或示範資料；本機 Tesseract（繁中＋英文）辨識圖片與 PDF，辨識設定可儲存 |
| 3 單據分類 | ✅ 完成 | 依關鍵字與格式自動分類、改分類、批次改分類、刪除未分類 |
| 4 欄位核對 | ✅ 完成 | 依類別自動擷取日期、金額、統編、帳號等欄位，可修改 |
| 5 匯出／帶入 | ✅ 完成 | 分類 Excel、匯出GBA受款XML（一位受款人多張發票、從帳戶清冊選帳號、刪除受款人、檢核）、差旅費明細、帳戶清冊 |

## 離線版

不用連網路的版本：執行 `tools/build-offline.sh` 產生 `dist/OCR-classify-offline.zip`（Windows 雙擊 `start-windows.bat` 開啟）。離線版不載入任何外部網址，字型改用電腦內建字型。

## 說明文件

- 軟體物料清單（SBOM，確認沒有中國大陸來源元件）：[sbom/SBOM.md](sbom/SBOM.md)、[CycloneDX JSON](sbom/sbom.cdx.json)、[Excel](sbom/SBOM.xlsx)

- Google Drive／OneDrive 金鑰申請：[SETUP.md](SETUP.md)
- Excel 匯出使用 [SheetJS](https://sheetjs.com/)（Apache 2.0，放在 `lib/`）。
