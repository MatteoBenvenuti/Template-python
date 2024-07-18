@echo off

:: URL della repository da clonare
set REPO_URL=https://github.com/tuo-username/tuo-repo-template.git

:: Clona la repository nella directory corrente
git clone %REPO_URL% .

:: Rimuovi la directory .git
rmdir /s /q .git

:: Rimuovi se stesso
del "%~f0"

echo Progetto creato nella directory corrente senza la directory .git
pause
