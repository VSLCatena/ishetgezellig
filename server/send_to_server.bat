@echo off
timeout /t 5 /nobreak >nul
"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="WinSCP.log" /ini=nul ^
  /command ^
    "open sftp://___HIDDEN INFO____" ^
    "put aantal.log" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%