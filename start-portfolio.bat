@echo off
setlocal
cd /d "%~dp0"
echo Starting Pavan Kumar's portfolio on http://127.0.0.1:5500
where py >nul 2>nul
if %errorlevel%==0 (
  start "" cmd /c "timeout /t 2 /nobreak >nul & start http://127.0.0.1:5500"
  py -m http.server 5500
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "" cmd /c "timeout /t 2 /nobreak >nul & start http://127.0.0.1:5500"
    python -m http.server 5500
  ) else (
    echo Python was not found. Install Python or use VS Code Live Server.
    pause
  )
)
endlocal
