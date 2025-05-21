@echo off

rem Run "git status --porcelain" and capture the output
for /f %%A in ('git status --porcelain') do (
    set "git_status_output=%%A"
)

rem Check if there are changes based on the captured output
if "%git_status_output%" == "" (
    echo There are no change
    exit 1
)