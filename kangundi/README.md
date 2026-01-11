# Kangundhi Frontend

React-based tourism website for Kangundhi.

## 🚀 Quick Start

### Local Development

1. **Install dependencies**
   ```bash
   npm install
   ```

2. **Set up environment variables**
   - Copy `env.example` to `.env`
   - Set `REACT_APP_API_BASE_URL` to your backend URL

3. **Run development server**
   ```bash
   npm start
   ```
   App runs on `http://localhost:3000`

### Production Build

```bash
npm run build
```

Build output is in the `build/` directory.

### Production Deployment

See `../../DEPLOYMENT_GUIDE.md` for complete deployment instructions.

**Quick Deploy to Netlify:**
1. Push code to GitHub
2. Connect repository to Netlify
3. Set build command: `npm run build`
4. Set publish directory: `build`
5. Set environment variable: `REACT_APP_API_BASE_URL`
6. Deploy!

## 📋 Environment Variables

- `REACT_APP_API_BASE_URL` - Backend API URL (e.g., `https://your-backend.onrender.com`)

## 🛠️ Tech Stack

- React 19
- React Router
- Tailwind CSS
- Framer Motion
- Leaflet (Maps)
