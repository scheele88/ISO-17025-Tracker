-- ══════════════════════════════════════════════════════════════
--  Migration: Evidence Expiry Tracking + Settings Table
--  Paste into Supabase SQL Editor and click RUN.
--  Safe to run multiple times (IF NOT EXISTS / ON CONFLICT).
-- ══════════════════════════════════════════════════════════════

-- 1. Add expiry_date to evidence_links
ALTER TABLE evidence_links
  ADD COLUMN IF NOT EXISTS expiry_date TEXT NOT NULL DEFAULT '';

-- 2. Add expiry_date to attached_files
ALTER TABLE attached_files
  ADD COLUMN IF NOT EXISTS expiry_date TEXT NOT NULL DEFAULT '';

-- 3. App-wide settings table (stores next_sa_date etc.)
CREATE TABLE IF NOT EXISTS settings (
  key   TEXT PRIMARY KEY,
  value TEXT NOT NULL DEFAULT ''
);
ALTER TABLE settings ENABLE ROW LEVEL SECURITY;
DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE policyname='allow_all_settings' AND tablename='settings'
  ) THEN
    CREATE POLICY allow_all_settings ON settings
      FOR ALL USING (true) WITH CHECK (true);
  END IF;
END $$;

-- 4. Seed default next surveillance date (change in the app anytime)
INSERT INTO settings (key, value)
VALUES ('next_sa_date', '2027-05-01')
ON CONFLICT (key) DO NOTHING;

-- 5. Active flag on requirements (soft-delete / retire old clauses)
ALTER TABLE requirements
  ADD COLUMN IF NOT EXISTS active BOOLEAN NOT NULL DEFAULT TRUE;

-- 6. Evidence suggested & reference note columns (populated by admin panel)
ALTER TABLE requirements
  ADD COLUMN IF NOT EXISTS evidence_suggested TEXT NOT NULL DEFAULT '';
ALTER TABLE requirements
  ADD COLUMN IF NOT EXISTS reference_note TEXT NOT NULL DEFAULT '';

-- 7. Seed default accreditation cycle milestones (editable from Admin tab)
INSERT INTO settings (key, value)
VALUES ('cycle_milestones', '[{"date":"2025-06-24","lbl":"Chu ky 1","sub":"Initial accreditation"},{"date":"2026-06-24","lbl":"Giam sat 1","sub":"SA1"},{"date":"2027-06-24","lbl":"Giam sat 2","sub":"SA2"},{"date":"2028-06-24","lbl":"Giam sat 3","sub":"SA3"},{"date":"2029-06-24","lbl":"Giam sat 4","sub":"SA4"},{"date":"2030-06-23","lbl":"Tai cong nhan","sub":"Re-accreditation"}]')
ON CONFLICT (key) DO NOTHING;
