@echo off
setlocal EnableExtensions
rem One-click: clone the portfolio repository, copy this complete folder, commit and push.
set "SOURCE=%~dp0"
for %%I in ("%SOURCE%..") do set "PARENT=%%~fI"
set "DEST=%PARENT%\pavanportfolio-github"
set "REPO_URL=https://github.com/kumar0745/pavanportfolio.git"
where git >nul 2>nul
if errorlevel 1 (
  echo Git was not found. Install Git for Windows: https://git-scm.com/download/win
  pause
  exit /b 1
)
if not exist "%DEST%\.git" (
  if exist "%DEST%" (
    echo Destination exists but is not a Git repository: %DEST%
    echo Rename or remove that folder, then run this script again.
    pause
    exit /b 1
  )
  echo Cloning %REPO_URL% ...
  git clone "%REPO_URL%" "%DEST%"
  if errorlevel 1 goto :failed
) else (
  echo Updating local checkout ...
  git -C "%DEST%" pull --ff-only origin main
  if errorlevel 1 goto :failed
)
echo Copying the complete portfolio source and assets ...
robocopy "%SOURCE%" "%DEST%" /E /R:2 /W:2 /XD ".git" "node_modules" ".vercel" /XF "Thumbs.db" ".DS_Store"
if errorlevel 8 goto :failed
git -C "%DEST%" config user.name "Pavan Kumar"
git -C "%DEST%" config user.email "131357362+kumar0745@users.noreply.github.com"
git -C "%DEST%" add -A
git -C "%DEST%" diff --cached --quiet
if errorlevel 1 (
  git -C "%DEST%" commit -m "feat: publish complete pastel city-to-home portfolio"
  if errorlevel 1 goto :failed
) else (
  echo No file changes to commit.
)
echo Pushing all website files to GitHub ...
git -C "%DEST%" push origin main
if errorlevel 1 goto :failed
echo.
echo SUCCESS: Complete portfolio pushed to:
echo https://github.com/kumar0745/pavanportfolio
echo.
echo To publish the live website, open repository Settings - Pages and choose GitHub Actions.
echo The included workflow will deploy from the main branch.
pause
exit /b 0
:failed
echo.
echo Upload did not finish. Review the Git error above.
echo On the first push, Git Credential Manager may open a browser for GitHub sign-in.
echo Complete sign-in and run this script again.
pause
exit /b 1
