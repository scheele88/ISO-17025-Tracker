-- ══════════════════════════════════════════════════════════════════════════
--  ISO/IEC 17025 & AOSC SR-01 Compliance Tracker — Supabase Schema
--  Paste this entire script into the Supabase SQL Editor and click RUN.
--  The app will seed the requirements data automatically on first launch.
-- ══════════════════════════════════════════════════════════════════════════

-- 1. Requirements (static — seeded by the app on first launch)
CREATE TABLE IF NOT EXISTS requirements (
  id                  TEXT PRIMARY KEY,
  type                TEXT NOT NULL,          -- 'HDR' | 'DAT'
  sort_order          INTEGER NOT NULL,
  hdr_text            TEXT,
  hdr_source          TEXT,                   -- 'iso' | 'sr01'
  clause_ref          TEXT,
  source              TEXT,                   -- 'ISO 17025' | 'SR-01'
  description         TEXT,
  applicable_section  TEXT,
  evidence_suggestion TEXT,
  prefilled_notes     TEXT
);

-- 2. Editable row state (upserted per row on every field change)
CREATE TABLE IF NOT EXISTS row_state (
  row_id        TEXT PRIMARY KEY,
  status        TEXT NOT NULL DEFAULT 'Not Yet Assessed',
  owner         TEXT NOT NULL DEFAULT '',
  due_date      TEXT NOT NULL DEFAULT '',
  last_reviewed TEXT NOT NULL DEFAULT '',
  notes         TEXT NOT NULL DEFAULT '',
  updated_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 3. Evidence links (URL / SharePoint paths)
CREATE TABLE IF NOT EXISTS evidence_links (
  id         BIGSERIAL PRIMARY KEY,
  row_id     TEXT NOT NULL,
  label      TEXT NOT NULL DEFAULT '',
  url        TEXT NOT NULL DEFAULT '',
  sort_order BIGINT NOT NULL DEFAULT 0
);

-- 4. Attached files (base64-encoded, max ~3 MB per file)
CREATE TABLE IF NOT EXISTS attached_files (
  id         BIGSERIAL PRIMARY KEY,
  row_id     TEXT NOT NULL,
  name       TEXT NOT NULL,
  size       INTEGER NOT NULL DEFAULT 0,
  data       TEXT NOT NULL,               -- base64 data URL
  sort_order BIGINT NOT NULL DEFAULT 0
);

-- 5. Row-Level Security
--    Open policy (lab-internal tool with anon key).
--    Add Supabase Auth + narrower policies later if needed.
ALTER TABLE requirements   ENABLE ROW LEVEL SECURITY;
ALTER TABLE row_state      ENABLE ROW LEVEL SECURITY;
ALTER TABLE evidence_links ENABLE ROW LEVEL SECURITY;
ALTER TABLE attached_files ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE policyname='allow_all' AND tablename='requirements')
  THEN CREATE POLICY allow_all ON requirements  FOR ALL USING (true) WITH CHECK (true); END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE policyname='allow_all' AND tablename='row_state')
  THEN CREATE POLICY allow_all ON row_state     FOR ALL USING (true) WITH CHECK (true); END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE policyname='allow_all' AND tablename='evidence_links')
  THEN CREATE POLICY allow_all ON evidence_links FOR ALL USING (true) WITH CHECK (true); END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE policyname='allow_all' AND tablename='attached_files')
  THEN CREATE POLICY allow_all ON attached_files FOR ALL USING (true) WITH CHECK (true); END IF;
END $$;
