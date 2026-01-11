# 📋 Netlify Settings Checklist

Copy these exact settings to your Netlify dashboard:

## Build Settings

**Base directory**: (EMPTY - leave blank)

**Build command**: 
```
npm install && npm run build
```

**Publish directory**: 
```
build
```

## Environment Variables

Add this variable:

**Key**: `REACT_APP_API_BASE_URL`  
**Value**: `https://your-backend-url.onrender.com`

(Replace `your-backend-url.onrender.com` with your actual Render backend URL)

---

## How to Update

1. Netlify Dashboard → Your Site
2. **Site settings** → **Build & deploy** → **Build settings**
3. Click **Edit settings**
4. Update the fields above
5. **Site settings** → **Environment variables**
6. Add the environment variable
7. **Save**
8. **Deploys** → **Trigger deploy** → **Deploy site**

---

## ✅ After Updating

Your build should succeed! The key is:
- ✅ `npm install` runs BEFORE `npm run build`
- ✅ Environment variable is set
- ✅ Publish directory is correct
