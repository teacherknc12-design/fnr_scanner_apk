@echo off
echo === FNR Scanner HTML to Android APK Setup ===
call npm install
call npx cap add android
copy /Y android-templates\AndroidManifest.xml android\app\src\main\AndroidManifest.xml
call npx cap sync android
echo === Done! Opening Android Studio... ===
call npx cap open android
pause
