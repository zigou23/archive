@echo off

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (

echo 请求管理员权限...

goto UACPrompt

) else ( goto gotAdmin )

:UACPrompt

echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"

echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"

exit /B

:gotAdmin

taskkill /f /t /im qqprotect.exe
taskkill /f /t /im qqExternal.exe
taskkill /f /t /im SunloginClient.exe
taskkill /f /t /im UninstallMonitor.exe
taskkill /f /t /im wsctrl.exe
taskkill /f /t /im HipsMain.exe
