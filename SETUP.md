# ISO/IEC 17025 & SR-01 Compliance Tracker — Setup Guide

No admin rights, no software installation.  Everything is done in a browser.

---

## Step 1 — Supabase (database)  ≈ 5 min

1. Open **https://supabase.com** → sign in (or create a free account).
2. Click **New project** → enter a name (e.g. `iso17025-tracker`) → set any database password → **Create project**.
3. Wait ~2 minutes for the project to provision.
4. In the left sidebar click **SQL Editor**.
5. Copy the full contents of `schema.sql`, paste into the editor, click **Run**.
   You should see *"Success. No rows returned."*
6. In the left sidebar click **Project Settings → API**.
7. Copy two values:
   - **Project URL** (looks like `https://abcde12345.supabase.co`)
   - **anon / public** key (long string under *Project API keys*)

---

## Step 2 — Edit config.js  ≈ 1 min

Open `config.js` in Notepad (or any text editor).
Replace the two placeholder strings:

```js
const SUPABASE_URL      = "https://abcde12345.supabase.co";   // ← your Project URL
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5...";     // ← your anon key
```

Save the file.

---

## Step 3 — Upload to GitHub  ≈ 3 min

1. Open **https://github.com** → sign in (or create a free account).
2. Click **+** (top right) → **New repository**.
   - Name: `iso17025-tracker`
   - Visibility: **Private** (recommended)
   - Click **Create repository**
3. On the next screen click **"uploading an existing file"**.
4. Drag all five files into the upload area:
   `index.html` · `config.js` · `schema.sql` · `render.yaml` · `SETUP.md`
5. Click **Commit changes**.

---

## Step 4 — Deploy on Render  ≈ 5 min

1. Open **https://render.com** → sign in (or create a free account).
2. Click **New → Static Site**.
3. Connect your GitHub account if prompted → select `iso17025-tracker`.
4. Settings:
   - **Branch**: `main`
   - **Publish directory**: `.`  *(just a dot — means the repo root)*
5. Click **Create Static Site**.
6. Wait ~1 minute → Render shows your live URL (e.g. `https://iso17025-tracker.onrender.com`).

---

## Step 5 — First launch (seed the database)  ≈ 30 sec

1. Open the Render URL.
2. A blue banner appears:
   **"Database is empty — click Seed Data to load all 116 requirements."**
3. Click **Seed Data** and wait a few seconds.
4. The full requirements table appears. The tracker is ready.

---

## Daily use

| Action | How |
|--------|-----|
| Edit a row | Click ▶ to expand → change Status, Owner, Due Date, Notes |
| Auto-save | Saves to Supabase automatically (~1 sec after you stop typing) |
| Add evidence | Expand row → *Add URL / SharePoint Link* or *Embed Small File* (≤3 MB) |
| Filter | Use the filter bar: free-text search + Source / Section / Status dropdowns |
| Export Excel | Green **Export Excel** button in the header |
| Share | Any team member can open the same Render URL — all see live data |

---

## Updating the app

When a new `index.html` is provided:

1. Go to your GitHub repo → click `index.html`.
2. Click the pencil icon (Edit) → select all → paste the new content.
3. Click **Commit changes**.
4. Render auto-deploys within ~1 minute.  No data is lost (data lives in Supabase).

---

## Free-tier limits (Supabase + Render)

| Service | Free limit | Typical usage |
|---------|-----------|---------------|
| Supabase DB | 500 MB | < 10 MB for this tracker |
| Supabase bandwidth | 5 GB / month | negligible |
| Render static site | Unlimited | — |

Both free tiers are more than sufficient for a lab team.
