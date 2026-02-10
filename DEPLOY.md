# Push & live preview (GitHub Pages)

## 1. Fix Git lock (if you see "index.lock" errors)

- Close any other app that might be using this repo (VS Code/Cursor, GitHub Desktop, another terminal).
- If the error persists, delete the lock file:
  - In File Explorer go to: `patchwork-living\.git\`
  - Delete the file **index.lock** if it exists.

## 2. Commit and push from your machine

In a terminal (PowerShell or Cursor terminal) from the project folder:

```powershell
cd "c:\Users\nicho\OneDrive\Documents\Patchwork Living\patchwork-living"

git add index.html images/
git commit -m "Search Projects: real images, banners, detail page, email CTA"
git push origin main
```

If Git asks for credentials, use your GitHub username and a **Personal Access Token** (not your GitHub password). Create one at: GitHub → Settings → Developer settings → Personal access tokens.

## 3. Turn on GitHub Pages (one-time)

1. Open: **https://github.com/nicholeproduces/patchwork-living**
2. Click **Settings** → **Pages** (left sidebar).
3. Under **Build and deployment**:
   - **Source:** Deploy from a branch
   - **Branch:** `main` → **/ (root)** → **Save**.
4. Wait 1–2 minutes. Your site will be at:
   - **https://nicholeproduces.github.io/patchwork-living/**

## 4. Later updates

After you change the site, run:

```powershell
git add -A
git commit -m "Describe your changes"
git push origin main
```

GitHub Pages will update the live site in a minute or two.
