@echo off

git remote add bitbucket https://git.allplan.com/scm/~mmarinov/gsi.steelconnections.git
for /f %%o in ('git rev-parse --abbrev-ref HEAD') do set BRANCH=%%o
git ls-remote --exit-code --heads bitbucket %BRANCH%
if %ERRORLEVEL% EQU 0 (git pull --rebase bitbucket %BRANCH% ) else ( echo "No remote %BRANCH%" )