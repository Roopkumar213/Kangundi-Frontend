# PowerShell script to fix repository structure
# Run this from the Frontend/kangundi directory

Write-Host "🔧 Fixing repository structure for Netlify deployment..." -ForegroundColor Cyan

# Step 1: Remove existing .git if it exists
if (Test-Path .git) {
    Write-Host "Removing existing .git directory..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force .git
}

# Step 2: Initialize new git repository
Write-Host "Initializing new git repository..." -ForegroundColor Green
git init

# Step 3: Add all files
Write-Host "Adding all files..." -ForegroundColor Green
git add .

# Step 4: Commit
Write-Host "Creating commit..." -ForegroundColor Green
git commit -m "Fix: Move files to repository root for Netlify deployment"

# Step 5: Add remote (remove if exists first)
Write-Host "Setting up remote..." -ForegroundColor Green
git remote remove origin 2>$null
git remote add origin https://github.com/Roopkumar213/Kangundi-Frontend.git

# Step 6: Set branch and push
Write-Host "Pushing to GitHub (this will overwrite the repository)..." -ForegroundColor Yellow
git branch -M main
git push -u origin main --force

Write-Host "✅ Done! Check your repository at: https://github.com/Roopkumar213/Kangundi-Frontend" -ForegroundColor Green
Write-Host "📝 Next: Update Netlify settings - Base directory should be EMPTY" -ForegroundColor Cyan
