# 雲端硬碟設定教學（Google Drive／OneDrive）

網頁上的「Google Drive」「OneDrive」按鈕，需要你用自己的帳號申請一組應用程式金鑰。申請一次就好，之後在網頁按「雲端設定」貼上即可。

> 這些金鑰不是密碼，會出現在網頁裡；但一定要把可用網址限制成 `https://chaifeng666.github.io`，別人拿去別的網站就不能用。
> 檔案是從雲端直接下載到你的瀏覽器處理，不會經過其他伺服器。

---

## 一、Google Drive（需要 3 個值）

1. 打開 [Google Cloud Console](https://console.cloud.google.com/)，左上角專案選單 →「新增專案」，名稱例如 `ocr-classify`，建立後切換到這個專案。
2. 左側「API 和服務」→「程式庫」，分別搜尋並 **啟用**：
   - **Google Picker API**
   - **Google Drive API**
3. 左側「OAuth 同意畫面」（或「Google Auth Platform」）：
   - 使用者類型選 **外部**，填應用程式名稱（例如「OCR 單據分類」）和你的 Email。
   - 「目標對象／測試使用者」加入你自己的 Gmail。
   - 權限範圍不用另外加（網頁只用 `drive.file`，只能讀你在選檔視窗點選的檔案）。
4. 左側「憑證」→「建立憑證」→ **OAuth 用戶端 ID**：
   - 應用程式類型：**網頁應用程式**
   - 「已授權的 JavaScript 來源」新增：`https://chaifeng666.github.io`
   - 建立後複製 **用戶端 ID**（`xxxx.apps.googleusercontent.com`）→ 這是第 ② 個值。
5. 「憑證」→「建立憑證」→ **API 金鑰**，建立後按「編輯 API 金鑰」：
   - 應用程式限制：**網站**，新增 `https://chaifeng666.github.io/*`
   - API 限制：**限制金鑰**，勾選 **Google Picker API**
   - 複製金鑰（`AIza…`）→ 這是第 ① 個值。
6. 左上角專案選單旁的「⋮」→「專案設定」，複製 **專案編號**（12 位數字）→ 這是第 ③ 個值。

## 二、OneDrive（需要 1 個值）

1. 打開 [Microsoft Entra 系統管理中心](https://entra.microsoft.com/) 或 [Azure 入口網站](https://portal.azure.com/)，用你的 Microsoft 帳號登入。
2. 「應用程式註冊」→「新增註冊」：
   - 名稱：例如 `OCR 單據分類`
   - 支援的帳戶類型：**任何組織目錄中的帳戶及個人 Microsoft 帳戶**（這樣個人版和公司版 OneDrive 都能用）
   - 重新導向 URI：平台選 **Web**，網址填 `https://chaifeng666.github.io/ocr-classify-ui/`
3. 建立後進到「驗證」：在「隱含授與和混合式流程」勾選 **存取權杖** 與 **識別碼權杖**，儲存。
4. 「API 權限」→「新增權限」→ Microsoft Graph →「委派的權限」→ 勾選 **Files.Read.All**，新增。
5. 回到「概觀」，複製 **應用程式 (用戶端) 識別碼**（`xxxxxxxx-xxxx-…`）→ 這就是要填的值。

## 三、填到網頁

打開 <https://chaifeng666.github.io/ocr-classify-ui/> → 步驟 1 上方按「雲端設定」→ 貼上上面的值 → 儲存。設定只存在這台電腦的瀏覽器裡；換電腦或換瀏覽器要再填一次。

想讓每台電腦都不用填，也可以把這 4 個值寫進 `index.html` 裡的 `CLOUD_DEFAULT`。
