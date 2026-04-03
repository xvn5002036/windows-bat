# 🛠️ UltimateToolkit (Windows 終極維護與一鍵還原中心)

![Version](https://img.shields.io/badge/Version-8.0-blue.svg)
![OS](https://img.shields.io/badge/OS-Windows_10%20%7C%2011-success.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

`UltimateToolkit.bat` 是一套專為 IT 維護人員與進階玩家打造的 Windows 全方位系統部署與維護腳本。
透過純批次檔 (Batch) 整合 DISM、BCDBoot 與 DiskPart 等原生底層工具，實現從系統備份、智能部署、離線驅動注入到建立本地一鍵還原環境的 All-in-One 解決方案。

## ✨ 核心功能 (Features)

* 📦 **系統一般備份與還原 (Capture & Deploy)**
  * 使用最高壓縮率將目前系統封裝為 `.wim` 映像檔。
  * 智能掃描目錄下所有 `.wim` / `.esd` 檔案，並支援**多版本索引選擇**。
* 🚀 **本地一鍵還原系統 (Local Recovery Environment)**
  * 模擬品牌電腦機制，製作專屬 `Factory.wim` 工廠映像並隱藏保護。
  * **無須隨身碟**，自動修改 BCD 開機選單，植入 3 秒倒數的「系統一鍵還原中心」。
* 🔌 **專業驅動管理 (Driver Management)**
  * 一鍵導出與備份當前系統的第三方驅動程式。
  * 支援在 WinPE 下將驅動程式**離線注入** (Offline Injection) 到全新部署的系統中。
* 💽 **硬碟一鍵分割 (UEFI / GPT Prep)**
  * 針對全新空白硬碟，一鍵抹除並建立標準的 UEFI (EFI + Windows) 系統分割區。
* 🛠️ **系統救援與優化 (Repair & Optimize)**
  * 繞過 Windows 11 安裝硬體限制 (TPM 2.0 / SecureBoot / RAM)。
  * 繞過 Windows 11 OOBE 強制聯網與微軟帳號登入限制 (BypassNRO)。
  * 關閉預約保留空間與休眠檔，釋放寶貴的 SSD 空間。

## 🖥️ 使用環境與準備 (Prerequisites)

1. **執行權限：** 必須以 **系統管理員身分 (Administrator)** 執行此腳本。
2. **推薦環境：** 建議於 **WinPE (Windows 預先安裝環境)** 下執行，以避免檔案鎖定並發揮最大部署效能。
3. **本地還原前置作業：** 若要使用「植入本地開機還原選單」功能，請先準備好 Windows 官方的微型系統檔案：
   * 將 `boot.wim` 與 `boot.sdi` 放置於 `C:\PE\` 目錄下。

## 📖 快速上手 (Quick Start)

1. 下載 `UltimateToolkit.bat`。
2. 將腳本與你的 `.wim` 或 `.esd` 映像檔放置於同一個資料夾。
3. 右鍵點擊腳本 ➔ **以系統管理員身分執行**。
4. 依照畫面上的互動式選單輸入對應數字即可操作。如果忘記流程，可在主選單輸入 `H` 呼叫內建的 SOP 操作手冊。

## ⚠️ 警告與免責聲明 (Disclaimer)

* **資料遺失風險：** 本腳本包含格式化磁碟機 (`format C:`) 與清空硬碟 (`diskpart clean`) 之高危險指令。執行系統還原或硬碟分割前，**請務必備份重要資料！**
* **風險自負：** 作者不對因錯誤操作或腳本運行所導致的任何資料遺失或硬體損壞負責，請於測試環境熟悉後再應用於生產環境。

## 👨‍💻 版權與維護 (Credits)

* **核心功能製作：** 李汪晏
* **專案維護與更新：** 李山侑

歡迎提交 Issue 或 Pull Request 來讓這個工具變得更好！
