-- ═══════════════════════════════════════════════════════════════════════
-- Tracker Restructuring Migration — ISO 17025 / SR-01 Interleaved Order
-- Updates sort_order for ALL rows + fixes header texts + content fixes
-- for R76 (§6.3), R82 (§6.6.2), R87 (§7.6).
-- Safe to run multiple times (all statements are idempotent UPDATEs).
-- ═══════════════════════════════════════════════════════════════════════

BEGIN;

-- ── 1. UPDATE sort_order and header text for all rows ──────────────────

UPDATE requirements SET sort_order = 0, hdr_text = 'SECTION 4 — GENERAL REQUIREMENTS  (ISO/IEC 17025:2017 + SR-01)', hdr_source = 'both' WHERE id = 'H1';
UPDATE requirements SET sort_order = 1 WHERE id = 'R1';
UPDATE requirements SET sort_order = 2 WHERE id = 'R67';
UPDATE requirements SET sort_order = 3 WHERE id = 'R2';
UPDATE requirements SET sort_order = 4 WHERE id = 'R68';
UPDATE requirements SET sort_order = 5, hdr_text = 'SECTION 5 — STRUCTURAL REQUIREMENTS  (ISO/IEC 17025:2017 + SR-01)', hdr_source = 'both' WHERE id = 'H2';
UPDATE requirements SET sort_order = 6 WHERE id = 'R3';
UPDATE requirements SET sort_order = 7 WHERE id = 'R69';
UPDATE requirements SET sort_order = 8 WHERE id = 'R4';
UPDATE requirements SET sort_order = 9 WHERE id = 'R70';
UPDATE requirements SET sort_order = 10 WHERE id = 'R5';
UPDATE requirements SET sort_order = 11 WHERE id = 'R71';
UPDATE requirements SET sort_order = 12 WHERE id = 'R6';
UPDATE requirements SET sort_order = 13 WHERE id = 'R7';
UPDATE requirements SET sort_order = 14, hdr_text = 'SECTION 6 — RESOURCE REQUIREMENTS  (ISO/IEC 17025:2017 + SR-01)', hdr_source = 'both' WHERE id = 'H3';
UPDATE requirements SET sort_order = 15 WHERE id = 'R8';
UPDATE requirements SET sort_order = 16 WHERE id = 'R9';
UPDATE requirements SET sort_order = 17 WHERE id = 'R10';
UPDATE requirements SET sort_order = 18 WHERE id = 'R11';
UPDATE requirements SET sort_order = 19 WHERE id = 'R12';
UPDATE requirements SET sort_order = 20 WHERE id = 'R13';
UPDATE requirements SET sort_order = 21 WHERE id = 'R14';
UPDATE requirements SET sort_order = 22 WHERE id = 'R72';
UPDATE requirements SET sort_order = 23 WHERE id = 'R73';
UPDATE requirements SET sort_order = 24 WHERE id = 'R74';
UPDATE requirements SET sort_order = 25 WHERE id = 'R75';
UPDATE requirements SET sort_order = 26 WHERE id = 'R15';
UPDATE requirements SET sort_order = 27 WHERE id = 'R16';
UPDATE requirements SET sort_order = 28 WHERE id = 'R17';
UPDATE requirements SET sort_order = 29 WHERE id = 'R18';
UPDATE requirements SET sort_order = 30 WHERE id = 'R19';
UPDATE requirements SET sort_order = 31 WHERE id = 'R76';
UPDATE requirements SET sort_order = 32 WHERE id = 'R20';
UPDATE requirements SET sort_order = 33 WHERE id = 'R21';
UPDATE requirements SET sort_order = 34 WHERE id = 'R22';
UPDATE requirements SET sort_order = 35 WHERE id = 'R23';
UPDATE requirements SET sort_order = 36 WHERE id = 'R24';
UPDATE requirements SET sort_order = 37 WHERE id = 'R25';
UPDATE requirements SET sort_order = 38 WHERE id = 'R26';
UPDATE requirements SET sort_order = 39 WHERE id = 'R27';
UPDATE requirements SET sort_order = 40 WHERE id = 'R28';
UPDATE requirements SET sort_order = 41 WHERE id = 'R29';
UPDATE requirements SET sort_order = 42 WHERE id = 'R30';
UPDATE requirements SET sort_order = 43 WHERE id = 'R31';
UPDATE requirements SET sort_order = 44 WHERE id = 'R32';
UPDATE requirements SET sort_order = 45 WHERE id = 'R77';
UPDATE requirements SET sort_order = 46 WHERE id = 'R78';
UPDATE requirements SET sort_order = 47 WHERE id = 'R79';
UPDATE requirements SET sort_order = 48 WHERE id = 'R33';
UPDATE requirements SET sort_order = 49 WHERE id = 'R34';
UPDATE requirements SET sort_order = 50 WHERE id = 'R35';
UPDATE requirements SET sort_order = 51 WHERE id = 'R80';
UPDATE requirements SET sort_order = 52 WHERE id = 'R96';
UPDATE requirements SET sort_order = 53 WHERE id = 'R36';
UPDATE requirements SET sort_order = 54 WHERE id = 'R81';
UPDATE requirements SET sort_order = 55 WHERE id = 'R37';
UPDATE requirements SET sort_order = 56 WHERE id = 'R82';
UPDATE requirements SET sort_order = 57, hdr_text = 'SECTION 7 — PROCESS REQUIREMENTS  (ISO/IEC 17025:2017 + SR-01)', hdr_source = 'both' WHERE id = 'H4';
UPDATE requirements SET sort_order = 58 WHERE id = 'R38';
UPDATE requirements SET sort_order = 59 WHERE id = 'R39';
UPDATE requirements SET sort_order = 60 WHERE id = 'R40';
UPDATE requirements SET sort_order = 61 WHERE id = 'R41';
UPDATE requirements SET sort_order = 62 WHERE id = 'R83';
UPDATE requirements SET sort_order = 63 WHERE id = 'R84';
UPDATE requirements SET sort_order = 64 WHERE id = 'R85';
UPDATE requirements SET sort_order = 65 WHERE id = 'R86';
UPDATE requirements SET sort_order = 66 WHERE id = 'R95';
UPDATE requirements SET sort_order = 67 WHERE id = 'R42';
UPDATE requirements SET sort_order = 68 WHERE id = 'R43';
UPDATE requirements SET sort_order = 69 WHERE id = 'R44';
UPDATE requirements SET sort_order = 70 WHERE id = 'R45';
UPDATE requirements SET sort_order = 71 WHERE id = 'R87';
UPDATE requirements SET sort_order = 72 WHERE id = 'R46';
UPDATE requirements SET sort_order = 73 WHERE id = 'R88';
UPDATE requirements SET sort_order = 74 WHERE id = 'R89';
UPDATE requirements SET sort_order = 75 WHERE id = 'R47';
UPDATE requirements SET sort_order = 76 WHERE id = 'R48';
UPDATE requirements SET sort_order = 77 WHERE id = 'R49';
UPDATE requirements SET sort_order = 78 WHERE id = 'R50';
UPDATE requirements SET sort_order = 79 WHERE id = 'R51';
UPDATE requirements SET sort_order = 80 WHERE id = 'R52';
UPDATE requirements SET sort_order = 81 WHERE id = 'R53';
UPDATE requirements SET sort_order = 82 WHERE id = 'R54';
UPDATE requirements SET sort_order = 83 WHERE id = 'R90';
UPDATE requirements SET sort_order = 84 WHERE id = 'R97';
UPDATE requirements SET sort_order = 85 WHERE id = 'R55';
UPDATE requirements SET sort_order = 86 WHERE id = 'R56';
UPDATE requirements SET sort_order = 87 WHERE id = 'R57';
UPDATE requirements SET sort_order = 88, hdr_text = 'SECTION 8 — MANAGEMENT SYSTEM REQUIREMENTS  (ISO/IEC 17025:2017 + SR-01)', hdr_source = 'both' WHERE id = 'H5';
UPDATE requirements SET sort_order = 89 WHERE id = 'R58';
UPDATE requirements SET sort_order = 90 WHERE id = 'R59';
UPDATE requirements SET sort_order = 91 WHERE id = 'R60';
UPDATE requirements SET sort_order = 92 WHERE id = 'R61';
UPDATE requirements SET sort_order = 93 WHERE id = 'R91';
UPDATE requirements SET sort_order = 94 WHERE id = 'R62';
UPDATE requirements SET sort_order = 95 WHERE id = 'R92';
UPDATE requirements SET sort_order = 96 WHERE id = 'R63';
UPDATE requirements SET sort_order = 97 WHERE id = 'R64';
UPDATE requirements SET sort_order = 98 WHERE id = 'R65';
UPDATE requirements SET sort_order = 99 WHERE id = 'R93';
UPDATE requirements SET sort_order = 100 WHERE id = 'R66';
UPDATE requirements SET sort_order = 101 WHERE id = 'R94';
UPDATE requirements SET sort_order = 102, hdr_text = 'ANNEX I — EQUIPMENT CALIBRATION & CHECK INTERVALS  (SR-01 Annex I)', hdr_source = 'sr01' WHERE id = 'H6';
UPDATE requirements SET sort_order = 103 WHERE id = 'R98';
UPDATE requirements SET sort_order = 104 WHERE id = 'R99';
UPDATE requirements SET sort_order = 105 WHERE id = 'R100';
UPDATE requirements SET sort_order = 106 WHERE id = 'R101';
UPDATE requirements SET sort_order = 107 WHERE id = 'R102';
UPDATE requirements SET sort_order = 108 WHERE id = 'R103';
UPDATE requirements SET sort_order = 109 WHERE id = 'R104';
UPDATE requirements SET sort_order = 110 WHERE id = 'R105';
UPDATE requirements SET sort_order = 111 WHERE id = 'R106';
UPDATE requirements SET sort_order = 112 WHERE id = 'R107';
UPDATE requirements SET sort_order = 113 WHERE id = 'R108';
UPDATE requirements SET sort_order = 114 WHERE id = 'R109';

-- ── 2. Content fixes for R76, R82, R87 ────────────────────────────────

-- R76: SR-01 §6.3
UPDATE requirements SET
  clause_ref          = 'SR-01 §6.3',
  description         = 'Based on the specific characteristics of the tests performed, the laboratory shall identify and document the required facilities and environmental conditions (e.g., temperature, humidity, lighting, vibration, contamination) and establish written controls for monitoring and maintaining these conditions. Environmental monitoring records shall be maintained. The laboratory must also comply with all applicable national regulations on laboratory waste disposal. Note: SR-01 §6.3.1 (Microbiology), §6.3.2 (Molecular Biology) and §6.3.3 (Pharmaceutical) sub-clauses are NOT APPLICABLE to this laboratory.',
  evidence_suggestion = 'Documented environmental requirements per test method (temperature range, humidity, etc.); Environmental monitoring log (thermometer records, humidity records); Corrective actions taken when out-of-range conditions detected; Written waste disposal procedure referencing applicable national regulation; Waste disposal records',
  prefilled_notes     = 'SR-01 §6.3 general clause applies to ALL labs: identify and control environmental conditions based on your test characteristics. The sub-clauses §6.3.1 (Microbiology), §6.3.2 (Molecular Biology), §6.3.3 (Pharmaceutical) are specific to those lab types and do NOT apply to this chemical/mechanical testing laboratory.',
  applicable_section  = 'Both'
WHERE id = 'R76';

-- R82: SR-01 §6.6.2
UPDATE requirements SET
  clause_ref          = 'SR-01 §6.6.2',
  description         = 'The laboratory shall define clear, detailed criteria for evaluating and selecting suppliers of chemicals, reference materials/standards, certified materials, and services (calibration, proficiency testing). Maintain records showing that procured products were evaluated against technical requirements before use. For chemicals and reagents: retain certificates (origin, quality/COA), lot numbers, storage guidance, and quality-check records. For reference standards and certified reference materials (CRM): purchase from approved suppliers (preferably ISO 17034-accredited or competent-authority-designated); retain COA with specific parameter values, MU, concentration, volume, validity period, and storage conditions. Note: §6.6.2(c) Biological consumables and §6.6.2(e) Molecular biology reagents are NOT APPLICABLE to this laboratory.',
  evidence_suggestion = 'Approved supplier list with evaluation evidence; Chemical/reagent COAs and lot records; Chemical quality-check records (before first use in accredited test); CRM certificates with assigned values, MU, validity date; RM/CRM usage log (preparation, in-use dates); Evidence of supplier evaluations for calibration and PT services',
  prefilled_notes     = 'SR-01 §6.6.2 applies to purchasing chemicals, reference standards, CRMs, and services. Sub-items c (biological consumables) and e (molecular biology reagents such as Taq polymerase) are for microbiology/molecular biology labs — NOT APPLICABLE here.',
  applicable_section  = 'Lab-wide'
WHERE id = 'R82';

-- R87: SR-01 §7.6
UPDATE requirements SET
  clause_ref          = 'SR-01 §7.6',
  description         = 'When developing methods for calculating measurement uncertainty (MU), the laboratory may refer to ISO 21748 (TCVN 10861) top-down approach or ISO/IEC Guide 98-3 (TCVN 9595) bottom-up approach, or any equivalent guideline. The MU calculation method shall be documented and the records retained. Note: SR-01 §7.6(a) (Microbiology MU) is NOT APPLICABLE to this laboratory. SR-01 §7.6(b) (Calibration Lab MU per AOSC GR-12) is NOT APPLICABLE as this is a testing lab.',
  evidence_suggestion = 'Written MU estimation procedure referencing ISO 21748 or ISO/IEC Guide 98; MU calculation worksheets/records for each accredited test method; Expanded uncertainty U values stated in test reports; Review records showing MU re-evaluated after method changes',
  prefilled_notes     = 'SR-01 §7.6 for testing labs: use ISO 21748 (top-down, based on reproducibility data from proficiency testing or validation) or ISO/IEC Guide 98 (bottom-up, component-by-component). MU must appear on accredited test reports. GR-12 (calibration lab MU) does not apply.',
  applicable_section  = 'Both'
WHERE id = 'R87';

COMMIT;

-- ── Verification queries ──────────────────────────────────────────────
-- Check row count and order:
-- SELECT id, sort_order, type, LEFT(COALESCE(hdr_text, clause_ref), 50) AS label
--   FROM requirements ORDER BY sort_order LIMIT 20;

-- Confirm headers have correct text:
-- SELECT id, hdr_text, hdr_source FROM requirements WHERE type = 'HDR' ORDER BY sort_order;

-- Confirm R76 is now applicable:
-- SELECT id, clause_ref, LEFT(description, 80) FROM requirements WHERE id = 'R76';