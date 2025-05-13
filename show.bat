@echo off
:: Install Chocolatey (jika belum ada)
where choco >nul 2>&1
if errorlevel 1 (
    echo Installing Chocolatey...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
    refreshenv
)

:: Install figlet and neofetch if not already installed
choco install figlet -y >nul
choco install neofetch -y >nul

:: Jalankan klik otomatis
python -c "import pyautogui as pag; pag.click(785, 17, duration=2)"
python -c "import pyautogui as pag; pag.click(903, 64, duration=2)"
start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(147, 489, duration=2)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"

:: Ganti warna menjadi hijau (khusus terminal yang mendukung)
echo [32m

:: Tampilkan teks X-SETBOX dengan figlet
figlet X-SETBOX

:: Jalankan neofetch
neofetch

:: Reset warna
echo [0m

echo Your Device Name: %username%@%computername%
