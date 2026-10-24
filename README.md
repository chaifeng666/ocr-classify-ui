# OCR 會計單據分類（UI 原型）

OCR 辨識後，先把會計單據分類（銀行帳號、發票、收據、水費、電費、電話費、高鐵、火車、計程車），再核對欄位並匯出。

- 線上預覽：https://chaifeng666.github.io/ocr-classify-ui/
- 開發中：已完成步驟 1「選擇檔案」（本機、拖放、貼上圖片、Google Drive、OneDrive）與步驟 5「匯出」（分類 Excel、受款人 XML、差旅費明細、帳戶清冊）；OCR、分類、欄位擷取陸續完成中。
- Excel 匯出使用 [SheetJS](https://sheetjs.com/)（Apache 2.0，放在 `lib/`）。
- Google Drive／OneDrive 要先申請金鑰，請看 [SETUP.md](SETUP.md)。
- 畫面上的資料全部是假資料，機關名稱一律顯示「OOO單位」。
