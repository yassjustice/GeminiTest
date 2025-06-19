@echo off
echo 🤖 Enhanced Gemini Chat - Setup Script
echo ======================================
echo.

REM Check if .env exists
if not exist ".env" (
    echo 📄 Creating .env file from template...
    copy ".env.example" ".env" >nul
    echo ✅ .env file created!
    echo.
    echo ⚠️  IMPORTANT: Edit .env file and add your Google AI API key
    echo    Get your API key from: https://makersuite.google.com/app/apikey
    echo.
) else (
    echo ✅ .env file already exists
)

REM Check for Node.js
node --version >nul 2>&1
if %errorlevel% == 0 (
    echo 📦 Installing npm dependencies...
    npm install
    echo ✅ Dependencies installed!
    echo.
    echo 🚀 You can now run the app with:
    echo    npm run serve
) else (
    REM Check for Python
    python --version >nul 2>&1
    if %errorlevel% == 0 (
        echo 🐍 Node.js not found, but Python is available
        echo 🚀 You can run the app with:
        echo    python -m http.server 8000
    ) else (
        echo ⚠️  Neither Node.js nor Python found
        echo 📝 You can still open enhanced-gemini-chat.html directly in your browser
        echo    (Some features may be limited without a local server^)
    )
)

echo.
echo 🔑 API Key Setup:
echo    1. Get your API key from: https://makersuite.google.com/app/apikey
echo    2. Either:
echo       - Edit .env file and add: GOOGLE_AI_API_KEY=your_key_here
echo       - Or use the 🔑 API Key button in the app interface
echo.
echo 🎉 Setup complete! Enjoy chatting with Gemini AI!
pause
