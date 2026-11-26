#!/usr/bin/env bash
set -e
echo "=== FNR Scanner HTML to Android APK Setup ==="
npm install
npx cap add android
cp -f android-templates/AndroidManifest.xml android/app/src/main/AndroidManifest.xml
npx cap sync android
echo "=== Done! Opening Android Studio... ==="
npx cap open android
