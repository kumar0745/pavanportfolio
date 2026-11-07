@echo off
setlocal EnableExtensions
set "SOURCE=%~dp0"
for %%I in ("%SOURCE%..") do set "PARENT=%%~fI"
set "DEST=%PARENT%\pavanportfolio-github"
set "REPO_URL=https://github.com/kumar0745/pavanportfolio.git"
where git >nul 2>nul
if errorlevel 1 (
  echo Git was not found. Install Git for Windows from https://git-scm.com/download/win
  pause
  exit /b 1
)
if not exist "%DEST%\.git" (
  if exist "%DEST%" (
    echo Destination exists but is not a Git repository: %DEST%
    pause
    exit /b 1
  )
  echo Cloning the connected repository...
  git clone "%REPO_URL%" "%DEST%"
  if errorlevel 1 goto :failed
) else (
  echo Updating the existing local checkout...
  git -C "%DEST%" pull --ff-only origin main
  if errorlevel 1 goto :failed
)
echo Copying the complete website, source and media assets...
robocopy "%SOURCE%" "%DEST%" /E /R:2 /W:2 /XD ".git" "node_modules" ".vercel" "dist" /XF "Thumbs.db" ".DS_Store"
if errorlevel 8 goto :failed
git -C "%DEST%" config user.name "Pavan Kumar"
git -C "%DEST%" config user.email "131357362+kumar0745@users.noreply.github.com"
git -C "%DEST%" add -A
git -C "%DEST%" diff --cached --quiet
if errorlevel 1 (
  git -C "%DEST%" commit -m "feat: publish complete pastel city-to-home portfolio"
  if errorlevel 1 goto :failed
) else (
  echo No source changes to commit.
)
echo Pushing all files to GitHub...
git -C "%DEST%" push origin main
if errorlevel 1 goto :failed
echo.
echo SUCCESS: Complete portfolio pushed to %REPO_URL%
echo Vercel is connected and should deploy the main branch automatically.
echo Dashboard: https://vercel.com/pavan-d46c/pavanportfolio
pause
exit /b 0
:failed
echo.
echo Upload failed. Review the Git error above.
echo Git Credential Manager may need you to sign in through a browser.
pause
exit /b 1
