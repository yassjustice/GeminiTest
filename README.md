# 🤖 Enhanced Gemini Chat Interface

A beautiful, feature-rich web interface for interacting with Google's Gemini AI models. This application provides a modern chat experience with advanced formatting, syntax highlighting, and comprehensive model support.

![Gemini Chat Interface](https://img.shields.io/badge/AI-Gemini%20Chat-blue?style=for-the-badge&logo=google)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)

## ✨ Features

### 🎨 **Advanced UI/UX**
- **Responsive Design** - Works perfectly on desktop, tablet, and mobile
- **Light/Dark Theme** - Toggle between themes with one click
- **Modern Interface** - Clean, intuitive design with smooth animations
- **Customizable Code Themes** - Multiple syntax highlighting themes

### 💬 **Rich Chat Experience**
- **Full Markdown Support** - Headers, lists, tables, blockquotes, and more
- **Syntax Highlighting** - Automatic code highlighting for 180+ languages
- **Math Formulas** - LaTeX support with MathJax (e.g., `$$E = mc^2$$`)
- **Image Display** - Show images from URLs directly in chat
- **Copy Code Buttons** - One-click copying for code blocks
- **Conversation History** - Maintains context across messages

### 🤖 **Comprehensive Model Support**
- **Latest Models** - Gemini 2.5 Pro, 2.0 Flash, and all variants
- **Model Categories** - Organized by power, speed, and efficiency
- **Easy Switching** - Change models mid-conversation
- **Model Information** - List all available models with details

### 🛠️ **Developer Features**
- **Canvas Drawing** - Simple drawing commands for diagrams
- **Error Handling** - Comprehensive error messages and recovery
- **Performance Optimized** - Efficient API calls and rendering
- **Security** - Content sanitization with DOMPurify

## 🚀 Quick Start

### Prerequisites
- Google AI API Key (Get one from [Google AI Studio](https://makersuite.google.com/app/apikey))
- Modern web browser with JavaScript enabled

### Installation

1. **Clone or Download**
   ```bash
   git clone <repository-url>
   cd enhanced-gemini-chat
   ```

2. **Set Up API Key (Choose one method)**
   
   **Method 1: Environment File (Recommended for development)**
   ```bash
   # Copy the example environment file
   cp .env.example .env
   
   # Edit .env and add your API key
   GOOGLE_AI_API_KEY=your_actual_api_key_here
   ```
   
   **Method 2: Browser Storage (Automatic)**
   - The app will prompt you for your API key on first use
   - Your key will be stored securely in browser's localStorage
   - Use the 🔑 API Key button to manage your key

3. **Run the Application**
   ```bash
   # Option 1: Simple Python server
   python -m http.server 8000
   
   # Option 2: Using npm (install dependencies first)
   npm install
   npm run serve
   
   # Option 3: Direct file access (limited functionality)
   # Open enhanced-gemini-chat.html directly in your browser
   ```

4. **Access the App**
   Open your browser and go to `http://localhost:8000`

## 📖 Usage Guide

### Getting Started
1. **Select a Model** - Choose from the left panel based on your needs:
   - 🚀 **Most Powerful** - Gemini 2.5 Pro variants for complex tasks
   - ⚡ **Fast & Powerful** - Gemini 2.0/2.5 Flash for balanced performance
   - 💡 **Efficient** - Gemini 1.5 variants for everyday use
   - 🔬 **Lightweight** - Gemma models for simple tasks

2. **Start Chatting** - Type your message in the input area
3. **Use Keyboard Shortcuts** - `Ctrl+Enter` to send messages quickly

### Markdown Features
The chat supports full Markdown syntax:

```markdown
# Headers
## Subheaders
**Bold text** and *italic text*
- Lists
- Items

| Tables | Are |
|--------|-----|
| Also   | Supported |

`Inline code` and:

```python
# Code blocks with syntax highlighting
def hello_world():
    print("Hello, World!")
```

> Blockquotes for emphasis

$$\text{Math formulas: } E = mc^2$$
```

### Available Models

#### 🚀 Most Powerful
- **Gemini 2.5 Pro** - Best for complex reasoning, analysis, and creative tasks
- **Gemini 2.5 Pro Preview** - Latest experimental features
- **Gemini 2.5 Pro Exp** - Experimental build with cutting-edge capabilities

#### ⚡ Fast & Powerful
- **Gemini 2.0 Flash** - Fastest response times with high quality
- **Gemini 2.0 Flash Exp** - Experimental Flash variant
- **Gemini 2.5 Flash** - Balanced speed and capability
- **Gemini 2.5 Flash Preview** - Preview of upcoming Flash features

#### 💡 Efficient
- **Gemini 1.5 Pro Latest** - Reliable and efficient for most tasks
- **Gemini 1.5 Pro 002** - Stable version with consistent performance
- **Gemini 1.5 Flash Latest** - Fast responses for quick queries
- **Gemini 1.5 Flash 002** - Lightweight but capable

#### 🔬 Lightweight
- **Gemini 2.0 Flash-Lite** - Ultra-fast for simple tasks
- **Gemini 1.5 Flash-8B** - 8B parameter model for efficiency
- **Gemma 3 Series** - Open-source models in various sizes (27B, 12B, 4B, 1B)

## 🎨 Customization

### Themes
- **Light Theme** - Clean, bright interface
- **Dark Theme** - Easy on the eyes for long sessions
- **Code Themes** - Multiple syntax highlighting options

### Styling
The interface uses CSS custom properties for easy customization:

```css
:root {
  --primary-color: #007bff;
  --secondary-color: #6c757d;
  --background-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  /* ... more variables */
}
```

## 🔧 Technical Details

### Built With
- **HTML5** - Semantic markup and structure
- **CSS3** - Modern styling with Grid and Flexbox
- **Vanilla JavaScript** - No frameworks, pure JS for performance
- **External Libraries**:
  - [Marked.js](https://marked.js.org/) - Markdown parsing
  - [Highlight.js](https://highlightjs.org/) - Syntax highlighting
  - [DOMPurify](https://github.com/cure53/DOMPurify) - HTML sanitization
  - [MathJax](https://www.mathjax.org/) - Mathematical notation

### API Integration
- Uses Google's Generative AI API
- Implements conversation context management
- Handles rate limiting and error recovery
- Supports all available Gemini and Gemma models

### Performance Features
- **Lazy Loading** - External libraries loaded as needed
- **Efficient Rendering** - Minimal DOM manipulation
- **Memory Management** - Conversation history limits
- **Responsive Images** - Optimized media handling

## 📱 Browser Support

| Browser | Version | Status |
|---------|---------|--------|
| Chrome | 90+ | ✅ Fully Supported |
| Firefox | 88+ | ✅ Fully Supported |
| Safari | 14+ | ✅ Fully Supported |
| Edge | 90+ | ✅ Fully Supported |

## 🔒 Security

- **API Key Protection** - Multiple secure storage options:
  - Environment variables (recommended for production)
  - Browser localStorage (automatic encryption)
  - Runtime prompting (secure input)
- **No Hardcoded Keys** - API keys are never stored in source code
- **Content Sanitization** - All HTML content is sanitized with DOMPurify
- **HTTPS Only** - All external resources use HTTPS
- **Local Storage Only** - API keys stored locally, never transmitted to third parties
- **Easy Key Management** - Built-in API key management interface

### 🔑 API Key Security Features

- **Automatic Detection** - Checks for API key in multiple locations
- **Secure Storage** - Uses browser's secure localStorage
- **Easy Management** - 🔑 API Key button for key operations:
  - View current key status
  - Update existing key
  - Clear stored key
  - Enter new key
- **No GitHub Exposure** - `.gitignore` prevents accidental commits

## 🐛 Troubleshooting

### Common Issues

**API Key Errors**
```
❌ Error: HTTP Error 403: API key not valid
```
- Verify your API key is correct
- Check that the API key has proper permissions
- Ensure you have credits/quota available

**Network Issues**
```
❌ Error: Failed to fetch
```
- Check your internet connection
- Try refreshing the page
- Clear browser cache

**Model Selection Issues**
- Ensure a model is selected before chatting
- Try a different model if one isn't responding
- Check the "List Models" feature for available options

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Report Bugs** - Open an issue with details
2. **Suggest Features** - Share your ideas
3. **Submit Pull Requests** - Fix bugs or add features
4. **Improve Documentation** - Help others understand the project

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- Google AI Team for the Gemini API
- The open-source community for the excellent libraries
- Contributors and users for feedback and improvements

---

**Made with ❤️ for the AI community**

For questions, issues, or suggestions, please open an issue on the repository.
