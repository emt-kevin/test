REM Install Google Credential Provider LightYear

start "" /WAIT "%~dp0gcpwstandaloneenterprise64.exe" /silent /install

REG ADD HKEY_LOCAL_MACHINE\Software\Google\GCPW /v domains_allowed_to_login /t REG_SZ /d lightyear.one /f /reg:64
REG ADD HKEY_LOCAL_MACHINE\Software\Google\GCPW /v use_shorter_account_name /t REG_DWORD /d 1 /f /reg:64

REM Install Google Chrome

MsiExec.exe /i googlechromestandaloneenterprise64.msi /qn

netsh wlan add profile filename="Wi-Fi-LIGHTYEAR.xml"