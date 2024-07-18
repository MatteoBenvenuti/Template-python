@echo off

:: Disattiva l'eco dei comandi per un aspetto più pulito
echo.

:: Chiedi all'utente di inserire il nome della cartella
set /p FOLDER_NAME=Inserisci il nome della cartella in cui clonare il repository: 

:: URL della repository da clonare
set REPO_URL=https://github.com/MatteoBenvenuti/Template-python.git 

:: Clona la repository nella directory specificata dall'utente
echo Clonazione del template in corso...
git clone %REPO_URL% "./%FOLDER_NAME%" >nul 2>&1

:: Verifica se il comando git clone è riuscito
if errorlevel 1 (
    echo Errore durante la clonazione del template. Verifica l'URL e riprova.
    pause
    exit /b 1
)

:: Rimuovi la directory .git
rmdir /s /q "%FOLDER_NAME%\.git" >nul 2>&1

:: Rimuovi il file clone_template.bat dalla cartella clonata
del "%FOLDER_NAME%\clone_template.bat" >nul 2>&1

@REM :: Rimuovi se stesso
del "%~f0"

:: Messaggio di log finale
echo Template clonato con successo nella directory: %FOLDER_NAME%
pause
