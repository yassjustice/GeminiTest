# 🛡️ SECURITY SETUP INSTRUCTIONS

## 🚨 IMPORTANT SECURITY NOTICE

This repository contains scripts and guides for securing your API keys. Some files in this directory are **intentionally excluded from Git** to prevent accidental exposure of sensitive information.

## 📁 Available Security Tools

- **`security-obliterate.ps1`** - Complete Git history obliteration script
- **Security guides** - Detailed instructions (local only, not committed)
- **Backup scripts** - Automated backup creation

## 🔑 API Key Security

1. **Never commit real API keys** to Git
2. **Use environment variables** (.env files)
3. **Always check .gitignore** before committing
4. **Revoke compromised keys** immediately

## 🚀 Quick Start

1. **Set up your API key:**
   ```bash
   # Edit .env file (this file is gitignored)
   GOOGLE_AI_API_KEY=your_actual_api_key_here
   ```

2. **Run your app:**
   ```bash
   python -m http.server 8000
   # Then open: http://localhost:8000/enhanced-gemini-chat.html
   ```

3. **For security cleanup (if needed):**
   ```powershell
   .\security-obliterate.ps1
   ```

## ✅ Security Checklist

- [ ] API key stored in .env file (not committed)
- [ ] .gitignore properly configured
- [ ] No sensitive data in commit history
- [ ] App tested with secure setup

## 🆘 Emergency

If you accidentally committed an API key:
1. **Revoke the key immediately** at https://makersuite.google.com/app/apikey
2. **Generate a new key**
3. **Run the security cleanup script**

---

🔒 **Your security is our priority. These tools help ensure your API keys never get exposed.**
