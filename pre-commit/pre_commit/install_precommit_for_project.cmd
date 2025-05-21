pip install pre-commit
for /f %%i in ('where pre-commit') do set precommit=%%i
xcopy %precommit% .
echo .gitignore >>.gitignore 
echo pre-commit.exe >>.gitignore 
echo .pre-commit-config.yaml >>.gitignore 
echo install_precommit_for_project.cmd >>.gitignore
echo no_empty_commit.cmd >> .gitignore
echo run_sync.cmd >>.gitignore 
.\pre-commit install --hook-type pre-commit --hook-type pre-push
pause