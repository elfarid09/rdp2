@echo off
:: Ganti warna hijau gelap
color 0A
cls

:: Klik otomatis menggunakan pyautogui
python -c "import pyautogui as pag; pag.click(785, 17, duration=2)"
python -c "import pyautogui as pag; pag.click(903, 64, duration=2)"
start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(147, 489, duration=2)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"

:: ASCII Art judul SETBOX (tanpa figlet)
echo.
echo  ███████╗███████╗████████╗██████╗  ██████╗ ██╗  ██╗
echo  ██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗██║ ██╔╝
echo  ███████╗█████╗     ██║   ██████╔╝██║   ██║█████╔╝ 
echo  ╚════██║██╔══╝     ██║   ██╔═══╝ ██║   ██║██╔═██╗ 
echo  ███████║███████╗   ██║   ██║     ╚██████╔╝██║  ██╗
echo  ╚══════╝╚══════╝   ╚═╝   ╚═╝      ╚═════╝ ╚═╝  ╚═╝
echo.

:: Info sistem ala Neofetch
echo ================= SYSTEM INFO =================
echo Username         : %USERNAME%
echo Computer Name    : %COMPUTERNAME%
echo OS Version       : %OS%
ver | findstr /C:"Microsoft" > nul
if %errorlevel%==0 (
    systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
)
echo Architecture     : %PROCESSOR_ARCHITECTURE%
echo CPU              : %PROCESSOR_IDENTIFIER%
echo RAM              : 
wmic MemoryChip get Capacity | findstr /R "[1-9]" > temp_ram.txt
setlocal enabledelayedexpansion
set ram_total=0
for /f %%A in (temp_ram.txt) do (
    set /a ram_total=!ram_total! + %%A
)
set /a ram_gb=%ram_total:~0,-9%
echo     Total: %ram_gb% GB
del temp_ram.txt >nul 2>&1
endlocal
echo ===============================================
echo.

:: Informasi tambahan
echo ..........................................................
echo .....Design by Safelfar_05................................
echo ..........................................................
echo ........ Subscribe To my  Channel ........................
echo ..........................................................
echo Your Device Name: %username%@%computername%
echo ..........................................................
