@echo off
setlocal enabledelayedexpansion
title Update GitHub with new/changed files
cd /d D:\unzip 2>nul || (echo D:\unzip not found & pause & exit /b 1)

if not exist ".git" (
  echo No git repo here yet - run RUN-ME.bat first.
  pause & exit /b 1
)

echo.
echo Checking what changed...
git add -A
git status --short
echo.

git diff --cached --quiet && (echo Nothing new to upload. & pause & exit /b 0)

set /p MSG=Describe this update (or press Enter for a default): 
if "%MSG%"=="" set "MSG=Update setups and files"

git commit -q -m "%MSG%"

for /l %%i in (1,1,3) do (
  git push && (echo. & echo Done: https://github.com/aadhithya15/Backtest-stuff & pause & exit /b 0)
  echo   connection dropped, retry %%i/3 ...
  timeout /t 5 >nul
)
echo   Push failed - run this file again, nothing is lost.
pause
