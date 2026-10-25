# SBOM 軟體物料清單

產生時間：2026-10-25T00:03:39+00:00　格式：CycloneDX 1.5（[sbom.cdx.json](sbom.cdx.json)）

檢查目標：**不使用中國大陸來源的元件、模型、字型、CDN。**

結果：✅ 通過 29 項、⚠️ 需注意 3 項、🗑️ 已移除 2 項（舊版已移除）。所有隨附的程式庫與模型都不是中國大陸來源；需注意的只有「字型」。

## 需注意項目與替代方案

| 項目 | 問題 | 替代方案 |
|---|---|---|
| Noto Sans TC（Google Fonts，網路版） | 發行者為 Google／Adobe（美國），但中文字形由常州華文（中國大陸）參與設計 | 改用電腦內建字型：微軟正黑體（Windows）、儷黑 Pro（Mac，臺灣華康）。離線版已採用。 |
| PingFang TC（系統備援字型） | 不隨附，但依公開資料由常州華文參與設計 | 從字型清單移除。離線版已移除。 |

## ocr-classify-ui（單據分類，GitHub Pages／離線版）

| # | 元件 | 版本 | 授權 | 開發者／組織 | 來源國 | 取得方式 | 結論 |
|---|---|---|---|---|---|---|---|
| 1 | ocr-classify-ui index.html（自行開發） | main | 專案自有 | chaifeng666 | 臺灣 | GitHub repo chaifeng666/ocr-classify-ui | ✅ 通過 |
| 2 | SheetJS（xlsx） | 0.18.5 | Apache-2.0 | SheetJS LLC | 美國 | npm registry → 放在 repo lib/（自行託管，不走 CDN） | ✅ 通過 |
| 3 | tesseract.js（含 worker） | 5.1.1 | Apache-2.0 | Project Naptha（Kevin Kwok 等） | 美國 | npm registry → repo lib/ | ✅ 通過 |
| 4 | tesseract.js-core（Tesseract OCR 5＋Leptonica，WebAssembly） | 5.1.1 | Apache-2.0（Tesseract）／BSD-2-Clause（Leptonica） | Tesseract：HP → Google；Leptonica：Dan Bloomberg | 美國 | npm registry → repo lib/core/ | ✅ 通過 |
| 5 | Tesseract 語言資料 chi_tra＋eng | 4.0.0 best_int | Apache-2.0 | Google LLC（tessdata） | 美國 | repo lib/lang/ | ✅ 通過 |
| 6 | PDF.js（pdfjs-dist，含 worker 與 Adobe CMap） | 3.11.174 | Apache-2.0（CMap：BSD-3-Clause） | Mozilla Foundation／Adobe Inc. | 美國 | npm registry → repo lib/ | ✅ 通過 |
| 7 | Noto Sans TC（思源黑體繁中） | Google Fonts 目前版 | OFL-1.1 | Google LLC／Adobe Inc. | 美國（發行者） | fonts.googleapis.com / fonts.gstatic.com（只有網路版載入） | ⚠️ 需注意 |
| 8 | PingFang TC（蘋方，系統字型，僅備援） | macOS／iOS 內建 | Apple 系統授權 | Apple Inc. | 美國（發行者） | 不隨附、不下載；只在 Apple 裝置上當備援字型 | ⚠️ 需注意 |
| 9 | Microsoft JhengHei（微軟正黑體，系統字型） | Windows 內建 | Windows 系統授權 | Microsoft Corporation | 美國 | 不隨附、不下載 | ✅ 通過 |
| 10 | LiHei Pro（儷黑 Pro，系統字型，僅離線版） | macOS 內建 | Apple 系統授權 | 華康科技 DynaComware（Apple 隨附） | 臺灣 | 不隨附、不下載 | ✅ 通過 |
| 11 | Google Identity Services（gsi/client） | 線上最新版 | Google API 服務條款 | Google LLC | 美國 | accounts.google.com（只有按「Google Drive」時才載入） | ✅ 通過 |
| 12 | Google API Loader＋Google Picker | 線上最新版 | Google API 服務條款 | Google LLC | 美國 | apis.google.com（只有按「Google Drive」時才載入） | ✅ 通過 |
| 13 | OneDrive File Picker SDK（OneDrive.js） | 7.2 | Microsoft API 使用條款 | Microsoft Corporation | 美國 | js.live.net（只有按「OneDrive」時才載入） | ✅ 通過 |
| 14 | GitHub Pages（網站託管） | — | GitHub 服務條款 | GitHub, Inc.（Microsoft） | 美國 | chaifeng666.github.io | ✅ 通過 |
| 15 | 政府電子採購網 拒絕往來廠商查詢（外部連結） | — | 政府網站 | 行政院公共工程委員會 | 臺灣 | web.pcc.gov.tw（只有按「查拒往」時開新分頁） | ✅ 通過 |
| 16 | 離線啟動檔 start-windows.bat／server.ps1／start-mac-linux.command | — | 專案自有 | chaifeng666 | 臺灣 | repo offline/ | ✅ 通過 |

## ocr-app（本地 OCR 小程式 ocr.html／OCR-offline.zip）

| # | 元件 | 版本 | 授權 | 開發者／組織 | 來源國 | 取得方式 | 結論 |
|---|---|---|---|---|---|---|---|
| 1 | ocr.html（自行開發） | 2026-10-24 | 專案自有 | chaifeng666 | 臺灣 | /mnt/project-files/ocr-app/ | ✅ 通過 |
| 2 | tesseract.js | 5.1.1 | Apache-2.0 | Project Naptha（Kevin Kwok 等） | 美國 | npm registry → OCR-offline.zip lib/；線上版從 jsDelivr 下載 | ✅ 通過 |
| 3 | tesseract.js worker | 5.1.1 | Apache-2.0 | Project Naptha | 美國 | 同上 | ✅ 通過 |
| 4 | tesseract.js-core（Tesseract OCR 5＋Leptonica，WebAssembly） | 5.1.1 | Apache-2.0（Tesseract）／BSD-2-Clause（Leptonica） | Tesseract：HP → Google，開源社群維護；Leptonica：Dan Bloomberg | 美國 | 同上 | ✅ 通過 |
| 5 | Tesseract 語言資料 chi_tra（繁體中文） | 4.0.0 best_int | Apache-2.0 | Google LLC（tessdata） | 美國 | tesseract.js 官方語言資料 → lib/lang/ | ✅ 通過 |
| 6 | Tesseract 語言資料 eng（英文） | 4.0.0 best_int | Apache-2.0 | Google LLC（tessdata） | 美國 | 同上 | ✅ 通過 |
| 7 | PDF.js（pdfjs-dist） | 3.11.174 | Apache-2.0 | Mozilla Foundation | 美國 | npm registry → lib/ | ✅ 通過 |
| 8 | PDF.js worker | 3.11.174 | Apache-2.0 | Mozilla Foundation | 美國 | 同上 | ✅ 通過 |
| 9 | Adobe CMap 字元對照表（pdfjs-dist/cmaps） | 3.11.174 隨附 | BSD-3-Clause | Adobe Inc. | 美國 | 同上 → lib/cmaps/ | ✅ 通過 |
| 10 | SheetJS（xlsx） | 0.18.5 | Apache-2.0 | SheetJS LLC | 美國 | npm registry → lib/ | ✅ 通過 |
| 11 | mammoth | 1.8.0 | BSD-2-Clause | Michael Williamson | 英國 | npm registry → lib/ | ✅ 通過 |
| 12 | JSZip | 3.10.1 | MIT OR GPL-3.0-or-later | Stuart Knightley | 英國 | npm registry → lib/ | ✅ 通過 |
| 13 | 手寫數字辨識模型 DIGIT_NET（自行訓練） | 2026-10-13 | 專案自有（訓練資料 CC BY-SA 3.0） | chaifeng666；訓練資料 MNIST（LeCun、Cortes、Burges，源自美國 NIST） | 臺灣（模型）／美國（資料） | 內嵌於 ocr.html | ✅ 通過 |
| 14 | jsDelivr CDN | — | jsDelivr 服務條款 | jsDelivr（Prospect One，波蘭）；節點由 Cloudflare、Fastly（美國）提供 | 波蘭／美國 | cdn.jsdelivr.net（只有線上載入模式；OCR-offline.zip 不使用） | ✅ 通過 |
| 15 | 系統字型：Microsoft JhengHei／PingFang TC／Noto Sans TC | 系統內建 | 系統授權 | Microsoft／Apple／Google | 美國（發行者） | 不隨附、不下載（只寫在字型清單裡） | ⚠️ 需注意 |
| 16 | 離線啟動檔 start-windows.bat／server.ps1／start-mac-linux.command | — | 專案自有 | chaifeng666 | 臺灣 | OCR-offline.zip | ✅ 通過 |
| 17 | PaddleOCR PP-OCRv5 | — | Apache-2.0 | 百度（Baidu） | 中國大陸 | 已於 2026-10-13 移除 | 🗑️ 已移除 |
| 18 | OpenCC | — | Apache-2.0 | BYVoid | 中國大陸 | 已於 2026-10-13 移除 | 🗑️ 已移除 |

## 說明

- **ocr-classify-ui index.html（自行開發）**：不含任何第三方程式碼
- **tesseract.js（含 worker）**：與 ocr-app 使用相同檔案（SHA-256 相同）
- **tesseract.js-core（Tesseract OCR 5＋Leptonica，WebAssembly）**：與 ocr-app 使用相同檔案（SHA-256 相同）
- **Tesseract 語言資料 chi_tra＋eng**：與 ocr-app 使用相同檔案（SHA-256 相同）
- **PDF.js（pdfjs-dist，含 worker 與 Adobe CMap）**：與 ocr-app 使用相同檔案（SHA-256 相同）
- **Noto Sans TC（思源黑體繁中）**：Noto Sans CJK／思源黑體由 Adobe 與 Google 發行，但依公開資料，中文字形由合作字型廠「常州華文」（中國大陸）參與設計。離線版已不載入；網路版建議改用電腦內建字型（見下方替代方案）。
- **PingFang TC（蘋方，系統字型，僅備援）**：依公開資料，蘋方由 Apple 與「常州華文」（中國大陸）合作設計。離線版已從字型清單移除；網路版建議一併移除。
- **政府電子採購網 拒絕往來廠商查詢（外部連結）**：按鈕以網址參數 suppNo 帶入統編，開新分頁顯示查詢結果；只傳送統編（公開資料），與手動查詢相同。
- **離線啟動檔 start-windows.bat／server.ps1／start-mac-linux.command**：使用系統內建 Windows PowerShell（Microsoft）或 python3（PSF）
- **tesseract.js-core（Tesseract OCR 5＋Leptonica，WebAssembly）**：一般版與 SIMD 加速版各一
- **Adobe CMap 字元對照表（pdfjs-dist/cmaps）**：檔名有 GB、UniGB 的是「簡體字編碼」的對照表，由 Adobe 製作，不是中國大陸來源的元件；只用來讀取用該編碼存的 PDF。
- **手寫數字辨識模型 DIGIT_NET（自行訓練）**：int8 權重直接寫在 ocr.html 裡，不需下載
- **jsDelivr CDN**：網頁的安全限制（CSP）只允許連到 jsDelivr 與本機。
- **系統字型：Microsoft JhengHei／PingFang TC／Noto Sans TC**：PingFang TC 與 Noto Sans TC 依公開資料由「常州華文」（中國大陸）參與中文字形設計；建議從字型清單移除，只留微軟正黑體。
- **PaddleOCR PP-OCRv5**：依使用者規定移除，改用 Tesseract（Google）。目前程式中已無任何引用。
- **OpenCC**：依使用者規定移除。目前程式中已無任何引用。

來源國以「開發者／發行組織所在地」判斷；SHA-256 雜湊值見 sbom.cdx.json，可用來核對隨附檔案沒有被替換。
