#!/bin/bash

# Enhanced Gemini Chat Setup Script

echo "🤖 Enhanced Gemini Chat - Setup Script"
echo "======================================"
echo ""

# Check if .env exists
if [ ! -f ".env" ]; then
    echo "📄 Creating .env file from template..."
    cp .env.example .env
    echo "✅ .env file created!"
    echo ""
    echo "⚠️  IMPORTANT: Edit .env file and add your Google AI API key"
    echo "   Get your API key from: https://makersuite.google.com/app/apikey"
    echo ""
else
    echo "✅ .env file already exists"
fi

# Check for Node.js
if command -v node &> /dev/null; then
    echo "📦 Installing npm dependencies..."
    npm install
    echo "✅ Dependencies installed!"
    echo ""
    echo "🚀 You can now run the app with:"
    echo "   npm run serve"
elif command -v python &> /dev/null; then
    echo "🐍 Node.js not found, but Python is available"
    echo "🚀 You can run the app with:"
    echo "   python -m http.server 8000"
elif command -v python3 &> /dev/null; then
    echo "🐍 Node.js not found, but Python 3 is available"
    echo "🚀 You can run the app with:"
    echo "   python3 -m http.server 8000"
else
    echo "⚠️  Neither Node.js nor Python found"
    echo "📝 You can still open enhanced-gemini-chat.html directly in your browser"
    echo "   (Some features may be limited without a local server)"
fi

echo ""
echo "🔑 API Key Setup:"
echo "   1. Get your API key from: https://makersuite.google.com/app/apikey"
echo "   2. Either:"
echo "      - Edit .env file and add: GOOGLE_AI_API_KEY=your_key_here"
echo "      - Or use the 🔑 API Key button in the app interface"
echo ""
echo "🎉 Setup complete! Enjoy chatting with Gemini AI!"
