# 🔧 Build Troubleshooting Guide

## Current Fixes Applied

✅ Added `engines` field to `package.json`  
✅ Updated Node version to 20 in `netlify.toml`  
✅ Created `.nvmrc` file  
✅ Added fallback for missing `REACT_APP_API_BASE_URL`

## Step-by-Step Fix

### 1. Push Updated Files

```bash
cd Frontend/kangundi
git add package.json netlify.toml .nvmrc
git commit -m "Fix: Node version and package.json configuration"
git push
```

### 2. Update Netlify Settings

**Build Settings:**
- Base directory: (EMPTY)
- Build command: `npm install && npm run build`
- Publish directory: `build`

**Environment Variables:**
- `REACT_APP_API_BASE_URL` = `https://your-backend-url.onrender.com`

### 3. Clear Netlify Cache (if needed)

1. Site settings → Build & deploy
2. Scroll to "Build settings"
3. Click "Clear cache and deploy site"

### 4. Redeploy

Deploys tab → Trigger deploy → Deploy site

---

## Common Error Codes

### Exit Code 254
- **Cause**: Command execution failure, often Node version mismatch
- **Fix**: Use Node 20 (already fixed in netlify.toml)

### Exit Code 2
- **Cause**: Build script failure
- **Fix**: Check build logs for specific errors

### "Cannot find module"
- **Cause**: Dependencies not installed
- **Fix**: Ensure `npm install` runs before `npm run build`

---

## If Still Failing

### Option 1: Check Build Logs
1. Go to Netlify → Deploys
2. Click on failed build
3. Expand logs to see exact error
4. Look for:
   - Module not found errors
   - Version conflicts
   - Memory errors

### Option 2: Try Different Node Version
Update `netlify.toml`:
```toml
[build.environment]
  NODE_VERSION = "18"
```

### Option 3: Downgrade React (Last Resort)
If React 19 is causing issues:
```bash
npm install react@^18.2.0 react-dom@^18.2.0
```

### Option 4: Increase Build Memory
In Netlify:
- Site settings → Build & deploy
- Add environment variable:
  - `NODE_OPTIONS` = `--max-old-space-size=4096`

---

## Verify Repository Structure

Your GitHub repo should have:
```
Kangundi-Frontend/
├── package.json          ← At root ✅
├── netlify.toml          ← At root ✅
├── .nvmrc                ← At root ✅
├── src/
├── public/
└── ...
```

NOT:
```
Kangundi-Frontend/
└── Frontend/
    └── kangundi/
        ├── package.json  ← Wrong!
```

---

## Quick Test Locally

Before deploying, test locally:
```bash
cd Frontend/kangundi
npm install
npm run build
```

If this works locally, the issue is with Netlify configuration.

---

## Still Need Help?

Share the full build logs from Netlify, and I can help diagnose the specific issue!
