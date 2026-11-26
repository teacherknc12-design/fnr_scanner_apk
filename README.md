# FNR Scanner — HTML to Android APK Package

এই প্যাকেজে আপনার `index.html`, `manifest.webmanifest`, `sw.js` এবং আইকনগুলোসহ **Live Camera** সাপোর্টেড Android APK তৈরির সব রেডিমেড ফাইল দেওয়া আছে।

## পদ্ধতি ১: পিসিতে ১-ক্লিক সেটআপ (Windows / Mac / Linux)
1. পিসিতে **Node.js** এবং **Android Studio** ইনস্টল করা থাকতে হবে।
2. এই ZIP ফাইলটি Extract করুন।
3. Windows হলে `setup-windows.bat` ফাইলটিতে ডাবল-ক্লিক করুন (Mac/Linux হলে টার্মিনালে `bash setup-mac-linux.sh` চালান)।
4. স্ক্রিপ্টটি অটোমেটিক `android` প্রজেক্ট বানাবে, `CAMERA` ও `INTERNET` পারমিশন বসাবে এবং Android Studio ওপেন করবে।
5. Android Studio থেকে **Build > Build Bundle(s) / APK(s) > Build APK(s)** ক্লিক করলেই `app-debug.apk` তৈরি হয়ে যাবে।

## পদ্ধতি ২: Android Studio ছাড়াই GitHub দিয়ে ফ্রি APK বিল্ড (ফোন বা পিসি থেকে)
1. GitHub-এ একটি নতুন রিপোজিটরি খুলে এই ফোল্ডারের সব ফাইল (`.github` ফোল্ডারসহ) আপলোড করুন।
2. রিপোজিটরির **Actions** ট্যাবে গিয়ে **Build Android APK** রান করুন।
3. ২-৩ মিনিট পর **Artifacts** সেকশন থেকে সরাসরি `FNR-Scanner-Debug-APK` ডাউনলোড করে ফোনে ইনস্টল করুন।

## পদ্ধতি ৩: সরাসরি Kotlin WebView প্রজেক্ট (Node.js ছাড়া)
- Android Studio-তে নতুন **Empty Views Activity (Kotlin)** প্রজেক্ট খুলুন।
- `www` ফোল্ডারটি কপি করে `app/src/main/assets/www` পাথে রাখুন।
- `android-templates/AndroidManifest.xml` এবং `android-templates/MainActivity.kt` ফাইল দুটি কপি করে বসান এবং `app/build.gradle.kts`-এ `implementation("androidx.webkit:webkit:1.11.0")` যোগ করে APK বিল্ড করুন।
