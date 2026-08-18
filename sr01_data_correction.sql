-- ═══════════════════════════════════════════════════════════════════
-- SR-01 Data Correction — ISO 17025 / SR-01 Tracker
-- Run in Supabase SQL Editor to update existing SR-01 rows
-- to match actual SR-01 Rev 05 (30 Oct 2025) clause content.
-- Safe to run: only UPDATEs existing rows, does not insert/delete.
-- ═══════════════════════════════════════════════════════════════════

BEGIN;

UPDATE requirements SET
  clause_ref         = 'SR-01 §4.1',
  description        = 'Demonstrate that the laboratory has analysed and identified risks that could impact its impartiality, and has taken actions to eliminate those risks. Maintain documented evidence of the impartiality risk analysis, reviewed at least annually. Assessors will verify that commercial, financial, or personnel-related pressures cannot override technical decisions.',
  evidence_suggestion = 'Impartiality risk analysis record (annually updated); Management commitment statement referencing impartiality; Conflict-of-interest register; Organisation chart showing separation of testing decisions from commercial functions',
  prefilled_notes    = 'SR-01 §4.1 supplements ISO 17025 §4.1. The standard text: ''Testing/Calibration laboratory shall have evidence showing that they have analyzed and identified to eliminate risks that impact on the laboratory''s impartiality.'' Key word: ''evidence'' — documented proof, not just a policy statement.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R67';

UPDATE requirements SET
  clause_ref         = 'SR-01 §4.2',
  description        = 'Establish a confidentiality policy appropriate to the laboratory''s operations and make it publicly available to all interested parties (staff, customers/clients, other relevant parties). The policy must address how customer data, test results, and samples are protected from unauthorised disclosure.',
  evidence_suggestion = 'Written confidentiality policy (posted on notice board or website, or distributed to customers); Signed confidentiality agreements for staff and external parties; Customer contracts containing confidentiality clause; Evidence policy is communicated to interested parties',
  prefilled_notes    = 'SR-01 §4.2 supplements ISO 17025 §4.2. The standard text: ''The laboratory shall establish a confidentiality policy suitable with its operation and shall public this policy to the interested party (staffs, customer/clients, other relevant parties,...ect).'' Note ''public'' means make publicly available — not just internal.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R68';

UPDATE requirements SET
  clause_ref         = 'SR-01 §5.1',
  description        = 'Ensure that the laboratory''s management system documentation explicitly references: (1) signatory authorities (who is authorised to sign accredited test reports), (2) the area where ISO/IEC 17025 applies, (3) the accredited scope, and (4) the laboratory location(s) — permanent facilities, onsite facilities, or mobile facilities. Keep these references current after every scope change or personnel change.',
  evidence_suggestion = 'Quality Manual (section identifying signatory authorities, scope, and locations); Authorised signatory list (names, roles, specimen signatures); AOSC accreditation certificate showing accredited scope and location; Document control records for QM updates',
  prefilled_notes    = 'SR-01 §5.1 supplements ISO 17025 §5. The standard text: ''Management system document shall reference to signatory authorities, area apply ISO/IEC 17025, accredited scope, laboratories location (permanent facilities, onsite facilities or in mobile facilities,...)'' Assessors check that the QM clearly names who can sign accredited reports.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R69';

UPDATE requirements SET
  clause_ref         = 'SR-01 §5.2',
  description        = 'Where the laboratory does not apply any requirement of ISO/IEC 17025 (e.g., sampling per §7.3, or calibration certificate issuance per §7.8.4 because the lab only performs testing), document a clear written statement with justification explaining why the requirement does not apply. This statement must be in the management system documentation and reviewed at each management review.',
  evidence_suggestion = 'Quality Manual section listing non-applicable requirements with justifications (e.g., ''§7.3 Sampling — not applicable: the laboratory does not perform sampling; all samples are customer-supplied''); Management review records confirming non-applicabilities remain valid',
  prefilled_notes    = 'SR-01 §5.2 supplements ISO 17025 §5. The standard text: ''The laboratory shall have a clear statement with justification when the laboratory does not apply any requirement of the standard.'' This is specifically about documented justification for exclusions — not just saying ''N/A''.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R70';

UPDATE requirements SET
  clause_ref         = 'SR-01 §5.3',
  description        = 'Ensure that AOSC assessment teams are given unrestricted access to all relevant divisions, departments, and support areas of the organisation to verify conformity with ISO/IEC 17025 during assessment. This includes support functions such as procurement, HR, IT (for data management), and management. Do not restrict assessors to the bench area only.',
  evidence_suggestion = 'Documented policy or procedure for hosting AOSC assessments (access commitment); Assessment hosting checklist (areas to be made available); Previous assessment records showing all relevant areas were accessible',
  prefilled_notes    = 'SR-01 §5.3 supplements ISO 17025 §5. The standard text: ''The assessment team shall be allowed to assess the activities of relevant divisions to verify its conformity with the standard.'' Restricting assessors from support divisions (e.g., denying access to purchasing records or HR files) is a nonconformity.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R71';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.2',
  description        = 'Document and maintain a competence profile (including training records) and job description for all laboratory personnel. Ensure records of skills assessments for all personnel conducting accredited tests are available and updated at least every 12 months per group of test parameters. Skills assessment records must be available at assessment.',
  evidence_suggestion = 'Individual competence profiles (per person: education, experience, training, skills assessment outcomes); Job descriptions for all roles; Skills assessment records dated within the past 12 months per parameter group; Authorisation matrix per method',
  prefilled_notes    = 'SR-01 §6.2 (General) supplements ISO 17025 §6.2. Key requirement: skills assessment per group of parameters, minimum every 12 months. ''Group of parameters'' = related methods (e.g., all GC methods, all MFI methods). Assessors will request to see these records for all actively testing personnel.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R72';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.2',
  description        = 'Demonstrate that training needs are formally analysed at least annually (e.g., via gap analysis between current competence and required competence). Maintain records showing that training actually occurred during each year (training log with dates, topics, duration, and attendees). Evaluate effectiveness of training and retain effectiveness assessment records.',
  evidence_suggestion = 'Training needs analysis record (annual, per person or per method group); Annual training plan / calendar; Training attendance records (date, topic, provider, duration, names); Training effectiveness evaluation records (test, practical assessment, or PT result post-training)',
  prefilled_notes    = 'SR-01 §6.2 (General) requires evidence of both: (1) training needs analysis occurred, and (2) training actually took place. A plan alone is insufficient — records of training execution must also exist. Assessors may ask to see records from the past 12 months.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R73';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.2.1',
  description        = 'Personnel authorised to independently sign off on accredited test results (authorization competence) must have: (1) professional qualifications relevant to the assigned testing field; (2) if the qualification is in a different field — documented evidence of relevant training AND at least 12 months of relevant experience; (3) at least 12 months of experience in the specific accredited testing field.',
  evidence_suggestion = 'Degree certificates (relevant field confirmed); Experience records (employment history, duration in current testing role); Cross-field training records and experience calculation where applicable; Authorisation records per method signed by Technical Manager',
  prefilled_notes    = 'SR-01 §6.2.1 sets minimum competence criteria for authorised personnel (those who sign/approve accredited reports). ''12 months in the accredited testing field'' means hands-on testing experience, not general lab experience. If a chemist does polymer mechanical testing: need 12 months specific mechanical testing experience plus evidence of relevant training.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R74';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.2.2',
  description        = 'Personnel performing accredited tests as technicians (analyst/technician level) must have: (1) professional qualifications relevant to the testing/calibration field; (2) at least 3 months of experience conducting the specific accredited tests; (3) if from a different qualification field — documented evidence of relevant training AND at least 12 months experience. Probationary analysts must work under continuous monitoring by a competent analyst until their training is complete.',
  evidence_suggestion = 'Personnel files: degree certificates, hire date, start-of-testing date; Probationary supervision plan and records (signed by supervisor and trainee); Competence declaration / authorisation sign-off after probation; Cross-field training records where applicable',
  prefilled_notes    = 'SR-01 §6.2.2 sets criteria for technician-level analysts (vs. §6.2.1 for authorisation). The 3-month threshold applies from the start of performing the specific accredited test. Probationals MUST be supervised — their results must be reviewed by an authorised analyst before release.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R75';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.3',
  description        = 'SR-01 §6.3.1 (Microbiology), §6.3.2 (Molecular Biology), and §6.3.3 (Pharmaceutical laboratory) sections are NOT APPLICABLE to this laboratory. Central Laboratory performs chemical testing (QC-Olefins & UT) and mechanical testing (QC-Polyolefins) only. No microbiological, molecular biology, or pharmaceutical accredited activities are conducted.',
  evidence_suggestion = 'Quality Manual non-applicability statement (SR-01 §6.3.1, §6.3.2, §6.3.3 excluded with justification); AOSC accreditation certificate confirming scope is chemical and mechanical testing only',
  prefilled_notes    = 'SR-01 §6.3.1 = Microbiology requirements; §6.3.2 = Molecular Biology; §6.3.3 = Pharmaceutical lab. None applicable to this chemical/mechanical lab. Status set to ''Not Applicable'' — no action required. Document this exclusion explicitly in the QMS per SR-01 §5.2.',
  applicable_section = 'Lab-wide',
  status             = 'Not Applicable'
WHERE id = 'R76';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.4.1',
  description        = 'Document criteria for equipment acceptance before placing new equipment into service (specifications, calibration requirements, functional checks). After any calibration, maintenance, or repair: verify that the equipment meets acceptance criteria before returning it to service for accredited testing. Record each return-to-service verification.',
  evidence_suggestion = 'Equipment acceptance criteria (per equipment type or model); Return-to-service verification records (date, equipment ID, checks performed, outcome, authorising person); Equipment history files linking calibration certificates to return-to-service checks',
  prefilled_notes    = 'SR-01 §6.4.1 supplements ISO 17025 §6.4. The ''verify before return to service'' requirement means a functional check AFTER receiving back from external calibration — even if a new certificate was issued. Typical check: balance → single-point weight verification; GC → single-point calibration curve run; Tensile tester → load cell check.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R77';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.4.1',
  description        = 'Calibration and intermediate check intervals for all measuring and testing equipment shall comply with the maximum intervals specified in SR-01 Annex I (or Annex II-V where applicable). For any equipment performing internal calibration: maintain a written procedure for the calibration, appropriate measurement standards, trained personnel, and suitable environmental conditions. Document all internal calibration activities.',
  evidence_suggestion = 'Equipment calibration schedule (cross-referenced to SR-01 Annex I intervals); Current calibration certificates (all within validity period); Internal calibration procedure(s) where applicable; Records of internal calibration activities (date, method, standard used, result, person, environmental conditions)',
  prefilled_notes    = 'SR-01 Annex I specifies maximum calibration intervals for specific equipment types (e.g., GC temperature: 1 year; balance: 1 year; MFI temperature: 1 year; density floats: verify against current Annex I). Do not exceed the maximum interval. Internal calibration is only allowed if the lab has the required procedure, reference standards, trained staff, and environmental controls.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R78';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.4.2',
  description        = 'All reference materials, certified reference materials (CRMs), and test media used in accredited testing must have a clear origin and a Certificate of Analysis (CoA) or equivalent document issued by a competent supplier. Preferentially use ISO 17034-certified CRMs where available. For all chemicals/reagents that affect test results: check quality prior to use by lot number and maintain records of all quality checks performed.',
  evidence_suggestion = 'Reference material and CRM register (origin, supplier, lot number, CoA on file, receipt date, expiry date, storage, status); CoA archive (filed by lot); Lot quality check records (date, lot, check performed, result, acceptance/rejection); ISO 17034 or equivalent accreditation for CRM suppliers (where available)',
  prefilled_notes    = 'SR-01 §6.4.2 supplements ISO 17025 §6.5.2. The ''check prior to use by lot'' requirement means each new lot must be verified before use in accredited testing — e.g., open a CRM lot, run against an existing verified lot; or run a reagent lot against the previous lot''s results to confirm performance. Record this check even if the result confirms the lot is acceptable.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R79';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.5',
  description        = 'Equipment having a significant effect on reported results must be calibrated by an appropriate calibration laboratory as specified in AOSC GR-14. Maintain CRM records including: sufficient reference materials, full identity and source records, complete documentation of property values and associated measurement uncertainty. Assign unique codes to all reference materials. Maintain documented procedures for acquisition, preservation, maintenance, and confirmation of RMs. Purchase records for RMs must include: property values and MU, certificate validity period, and required storage conditions.',
  evidence_suggestion = 'Calibration certificates from AOSC GR-14 compliant providers; RM/CRM register with unique codes, property values, MU, validity, storage conditions; RM procedures (acquisition, preservation, maintenance, confirmation); Purchase records for each RM lot; AOSC GR-14 document on file',
  prefilled_notes    = 'SR-01 §6.5 supplements ISO 17025 §6.5. ''AOSC GR-14'' is the AOSC general requirement document specifying which calibration laboratories are acceptable (VILAS-accredited or equivalent ILAC MRA member). RM purchase records must include MU of certified values — a CoA without stated uncertainty does not satisfy this requirement.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R80';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.6.1',
  description        = 'When the laboratory subcontracts testing activities, use only competent subcontractors. A competent subcontractor is: (1) an AOSC-accredited facility for the relevant tests, OR (2) a laboratory accredited by a mutual recognition partner of AOSC (ILAC MRA member), OR (3) a government-designated testing facility. The laboratory remains fully responsible for the subcontracted results issued to customers. Regularly review the subcontractor''s accreditation status.',
  evidence_suggestion = 'Subcontracting procedure; List of approved subcontractors with their accreditation body and certificate number; Copies of subcontractor accreditation certificates (current); Records of regular accreditation status checks (e.g., annual VILAS register check); Customer notification records where subcontracting was used',
  prefilled_notes    = 'SR-01 §6.6.1 supplements ISO 17025 §6.6. If the laboratory does not subcontract, document this fact. ''Regular review'' of accreditation status means checking at least annually that the subcontractor''s accreditation has not been suspended or withdrawn. Accreditation can be suspended without notice — check the VILAS public register.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R81';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.6.2',
  description        = 'Define and document clear criteria for the evaluation and selection of all external suppliers of chemicals, reference standards, strains, and services (calibration, proficiency testing, etc.). Apply these criteria when selecting new suppliers. Maintain records of the evaluation of products and services before use (incoming inspection, review of certificates, supplier performance assessment).',
  evidence_suggestion = 'Supplier evaluation criteria (documented: e.g., accreditation status, technical capability, past performance, cost); Approved Supplier List with evaluation dates and outcomes; Incoming inspection records (chemicals: CoA checked, grade confirmed; calibration: certificate reviewed for traceability and MU; PT providers: ISO 17043 accreditation confirmed)',
  prefilled_notes    = 'SR-01 §6.6.2 supplements ISO 17025 §6.6.2. The requirement explicitly covers suppliers of calibration services and PT providers — not just chemical suppliers. For PT providers: verify ISO/IEC 17043 accreditation before each round. For calibration labs: verify current VILAS or ILAC MRA accreditation at each annual re-evaluation.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R82';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.2.1',
  description        = 'The laboratory shall have documented test methods that are referenced, verified, validated, and quoted in test reports. Maintain procedures for method selection and validation. Retain all verification and validation records; these records will be reviewed by AOSC during assessment. Always use updated editions of test methods — when a new version is published, the laboratory has a maximum of 12 months to update and implement the new method.',
  evidence_suggestion = 'Method library (current edition of each standard method); Method selection procedure; Verification/validation records per method; Document control records showing edition updates and implementation dates; Test reports citing method standard and edition year',
  prefilled_notes    = 'SR-01 §7.2.1 supplements ISO 17025 §7.2. The 12-month update rule is strict — if ISO 527-1:2012 is superseded by ISO 527-1:2019, the lab must verify and implement the 2019 edition within 12 months of its publication date. Failure to update = using an outdated method = potential scope deviation. Notify AOSC when adopting the new edition.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R83';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.2.1',
  description        = 'During AOSC assessment, the laboratory must be prepared for test witnessing: for initial accreditation and re-assessment, at least 30% of accredited tests in the scope must be witnessed by assessors. For surveillance assessments, the number of tests to be witnessed is √N (square root of total number of accredited tests per field, rounded up). Ensure all required equipment, samples, and personnel are available during assessment visits.',
  evidence_suggestion = 'Test witnessing schedule prepared for each AOSC assessment visit; List of accredited tests per field (to calculate √N for surveillance); Samples/specimens prepared and available; Personnel roster for assessment days confirming competent staff available to perform tests',
  prefilled_notes    = 'SR-01 §7.2.1 test witness requirement: Initial/re-assessment = ≥30% of accredited tests must be witnessed. Surveillance (SA1, SA2, etc.) = √N tests (e.g., if N=20 accredited tests in a field, √20 ≈ 5 tests must be witnessed). Pre-assess which tests to prepare; have reagents, samples, and standards ready before the assessor arrives.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R84';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.2.2',
  description        = 'Verify or validate all methods before use in accredited testing, assessing both basic conditions and all technical factors affecting results. For standard methods that include precision data (repeatability r and reproducibility R): perform a verification demonstrating the lab can achieve those published precision values. For non-standard or in-house methods: perform a full validation. Review all verification and validation records at least every 24 months.',
  evidence_suggestion = 'Verification protocol and report per standard method (with comparison to published r/R values); Validation protocol and report per non-standard or in-house method; V&V record index with review dates (next review date ≤ 24 months from last review); Technical Manager sign-off on each V&V report',
  prefilled_notes    = 'SR-01 §7.2.2 supplements ISO 17025 §7.2.2. The 24-month periodic review is an AOSC-specific additional requirement. At each review: assess whether the V&V data still reflects current lab conditions (same equipment, same personnel, same reagents). If significant changes occurred, a new V&V study may be required rather than just a paper review.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R85';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.2.2',
  description        = 'Submit all method verification and validation records to AOSC before the initial accreditation assessment. If a method is updated during the accreditation cycle (new standard edition adopted), inform AOSC and submit the updated V&V records within 30 days of implementation. For chemical test methods, the validation must address all applicable parameters in SR-01 Table 1: Trueness, Sensitivity, Selectivity, Repeatability, Reproducibility, LOD, LOQ, Linearity, Working Range, and Measurement Uncertainty.',
  evidence_suggestion = 'AOSC submission records for V&V reports (before initial assessment); Notifications sent to AOSC for method updates with V&V records attached (within 30 days); V&V reports for chemical methods showing all SR-01 Table 1 parameters addressed or justified as non-applicable',
  prefilled_notes    = 'SR-01 Table 1 (10 parameters for chemical methods): Trueness, Sensitivity, Selectivity, Repeatability, Reproducibility, LOD, LOQ, Linearity, Working Range, Uncertainty. Each must either be determined or documented as not applicable with justification. For mechanical methods (QC-Polyolefins): SR-01 does not specify Table 1 — focus on repeatability, reproducibility, and MU.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R86';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.6',
  description        = 'Evaluate measurement uncertainty (MU) for all quantitative accredited test results using either ISO 21748 (TCVN 10861) — the top-down approach — or ISO/IEC Guide 98-3 (TCVN 9595) — the bottom-up GUM approach. Both approaches are acceptable to AOSC. Calibration laboratory MU shall be evaluated per AOSC GR-12. Report expanded uncertainty (U, coverage factor k=2, ~95% confidence) in test reports where required.',
  evidence_suggestion = 'MU evaluation reports per accredited method (approach: ISO 21748 or ISO/IEC Guide 98; components; combined uncertainty; U at k=2); Supporting data (repeatability study, bias study, calibration cert uncertainty values); MU stated in test report templates; AOSC GR-12 document (if calibration activities performed)',
  prefilled_notes    = 'SR-01 §7.6 supplements ISO 17025 §7.6. References: ISO 21748 = TCVN 10861 (top-down, uses reproducibility data); ISO/IEC Guide 98-3 = TCVN 9595 (GUM bottom-up). Most chemical labs use ISO 21748 as it leverages the validation/reproducibility data already collected. GR-12 applies specifically to calibration laboratories — verify if this lab issues calibration certificates.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R87';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.7.1',
  description        = 'Implement quality assurance (QA) activities to ensure the validity of internal test results. For each method, define the type of QA activity (e.g., CRM check, control sample, duplicate, blank, spike recovery), the frequency, and the acceptance criteria. Maintain all QA activity records systematically and review them regularly to detect trends before they result in out-of-control results.',
  evidence_suggestion = 'QA/QC plan per method (QA activity type, frequency, acceptance criteria); QC run records / control charts; CRM check records; Duplicate analysis records; Out-of-control event investigation records; QA data review sign-off (monthly or per batch)',
  prefilled_notes    = 'SR-01 §7.7.1 supplements ISO 17025 §7.7. The standard text: ''(a) Activity to ensure quality of internal test results, determine frequency, maintain records.'' §7.7.1(b) covers microbiology positive/negative controls — NOT APPLICABLE to this lab. Key AOSC expectation: QA activities must be defined per method, not just generically. Assessors will check control charts for trends.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R88';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.7.2',
  description        = 'Participate in external comparison activities at least once per year for each accredited sub-field, through one of the following: (a) proficiency testing (PT) by a competent PT provider accredited under ISO/IEC 17043 or accepted by AOSC; (b) if no appropriate PT scheme exists — interlaboratory comparison (ILC) with other AOSC-accredited ISO 17025 laboratories; (c) if neither PT nor ILC is available — use at least 2 internal alternative methods (e.g., CRM checks, retained sample re-testing, repeatability/reproducibility assessment, intra-lab comparison).',
  evidence_suggestion = 'Annual PT participation plan (per sub-field, per PT provider, per round date); PT result reports and z-scores (all rounds in past 12 months); PT provider ISO 17043 accreditation certificate; If ILC used: ILC protocol and results; If internal alternatives: documented evidence of ≥2 methods with records',
  prefilled_notes    = 'SR-01 §7.7.2 supplements ISO 17025 §7.7.2. Priority: (a) PT first, then (b) ILC, then (c) internal alternatives. For each sub-field (e.g., GC hydrocarbon analysis, MFI, density), at least one round per year. Unsatisfactory PT result (|z|>3) = nonconformity requiring root cause analysis and corrective action before next assessment.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R89';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.8',
  description        = 'Clearly identify the accreditation status of each test result in the test report — for example, mark non-accredited results with an asterisk (*) or equivalent notation. Use the AOSC accreditation symbol and accreditation number in accordance with AOSC GR-02. For test results not covered by the accredited scope, do not use the VILAT or VLAC accreditation symbol.',
  evidence_suggestion = 'Test report templates showing: (1) marking for non-accredited results (e.g., ''*''), (2) AOSC accreditation symbol and number (per GR-02), (3) scope statement; AOSC GR-02 document on file; Sample issued test reports demonstrating correct identification of accredited vs. non-accredited results',
  prefilled_notes    = 'SR-01 §7.8 supplements ISO 17025 §7.8. Three key requirements: (1) identify accredited vs. non-accredited results in each report; (2) use AOSC symbol per GR-02 format and placement rules; (3) never use VILAT or VLAC symbol for out-of-scope results. Mix of accredited and non-accredited results in same report is allowed if clearly distinguished. Obtain GR-02 from AOSC and review all report templates against its requirements.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R90';

UPDATE requirements SET
  clause_ref         = 'SR-01 §8.4',
  description        = 'Retain all quality and technical records for a minimum of 5 years, unless other applicable regulations prescribe a longer period. Records include: test records, test reports, calibration certificates, competence records, internal audit records, corrective action records, V&V records, and management review minutes. Apply longer retention periods where legally required or where customer contracts specify longer.',
  evidence_suggestion = 'Records retention schedule (record type, minimum period, location, disposal method); Records storage procedure; Disposal log (for records that have reached end of retention period); Any applicable legal or contractual retention requirements identified',
  prefilled_notes    = 'SR-01 §8.4 supplements ISO 17025 §8.4 with an explicit 5-year minimum. The standard text: ''The laboratory shall retain records for ≥5 years unless otherwise prescribed.'' Customer contracts in the petrochemical sector sometimes require longer retention (e.g., 10 years) — check each major customer contract. Equipment records: retain for life of equipment + 5 years (calibration history must be traceable for the instrument''s full service life).',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R91';

UPDATE requirements SET
  clause_ref         = 'SR-01 §8.5',
  description        = 'As an extension of the impartiality requirements in SR-01 §4.1, the laboratory shall demonstrate: (1) analysis of context (internal and external factors affecting the lab), (2) identification and assessment of risks and opportunities, and (3) implementation of appropriate actions to control identified risks. This goes beyond simply listing risks — the lab must show actions taken and their effectiveness.',
  evidence_suggestion = 'Risk register (risks identified, assessed by likelihood × impact, mitigation actions with status and owner); Context analysis record (internal factors: staff, equipment, methods; external: regulatory, market, customer); Management review records showing risk items discussed and actions closed',
  prefilled_notes    = 'SR-01 §8.5 supplements ISO 17025 §8.5 by referencing §4.1 and explicitly requiring demonstration of context analysis, identification, assessment, and control actions. The standard text: ''Refer to 4.1. Lab shall demonstrate analysis of context, identification and assessment of risks and opportunities, and appropriate actions to control them.'' Assessors will look for an active, maintained risk register — not a one-time document.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R92';

UPDATE requirements SET
  clause_ref         = 'SR-01 §8.8',
  description        = 'Plan and execute an internal audit programme with a schedule spanning 12 months, covering all ISO/IEC 17025 technical and management requirements. Ensure auditors are competent (trained in auditing techniques and in the relevant technical area) and independent from the activities being audited. Maintain all audit records: programme, audit plan, audit notes/evidence, audit report, and corrective actions raised and closed.',
  evidence_suggestion = 'Annual internal audit programme / schedule (all clauses and methods covered within 12 months); Auditor competence records (training certificate, independence confirmation); Audit plan per audit; Completed audit checklists with objective evidence noted; Audit report (findings classified by severity); Corrective action records linked to findings; Closure evidence',
  prefilled_notes    = 'SR-01 §8.8 supplements ISO 17025 §8.8. AOSC requires specific records: programme, plan, audit notes, audit report, and corrective actions — all five must exist. Auditor competence is an explicit AOSC check. Recommended: complete the annual audit at least 2 months before the AOSC assessment so all corrective actions can be closed and verified before the assessor arrives.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R93';

UPDATE requirements SET
  clause_ref         = 'SR-01 §8.9',
  description        = 'The laboratory''s top management shall review the effectiveness of the management system at least once every 12 months. The management review must cover the inputs required by ISO 17025 §8.9.2 (audit results, PT trends, corrective actions, customer feedback, resource adequacy, risk update, etc.) and produce documented outputs: decisions and actions with owners and deadlines. Retain management review records for at least 5 years.',
  evidence_suggestion = 'Management review meeting agenda (covering all §8.9.2 inputs); Signed meeting minutes with decisions and action items; Attendance records (confirming top management participation); Action item tracking log from previous review; Evidence of actions closed',
  prefilled_notes    = 'SR-01 §8.9 supplements ISO 17025 §8.9. The standard text: ''Effectiveness reviewed at least once per 12 months.'' This is the minimum frequency — the lab may review more often. ''Effectiveness'' means the review must assess whether the MS is actually working, not just whether required activities were completed. Include SA1 NC closure status and SA2 preparation as standing agenda items during the 2025–2030 cycle.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R94';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.2.1',
  description        = 'Maintain a method SOP for each accredited test that includes: (1) reference to the applicable standard and edition year, (2) equipment and reagent requirements, (3) sample preparation steps, (4) step-by-step test procedure, (5) calculation formulae, (6) QC acceptance criteria, and (7) safety and waste disposal. Ensure SOPs are approved before use, version-controlled, and readily accessible at the point of testing.',
  evidence_suggestion = 'SOPs for all accredited methods (current version, approved and signed); SOP checklist confirming all 7 elements present; Document control records (revision history, approval signatures, distribution); Evidence SOPs are available at test bench (printed controlled copy or electronic access)',
  prefilled_notes    = 'This row captures the SOP documentation requirements under SR-01 §7.2.1. While SR-01 doesn''t explicitly enumerate the 7 SOP elements, these derive from the requirement to have ''documented methods referenced, verified, validated, and quoted in reports'' combined with ISO 17025 §7.2.1. Assessors audit SOPs against the actual standard method and will flag if a procedure deviates without documented justification.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R95';

UPDATE requirements SET
  clause_ref         = 'SR-01 §6.5',
  description        = 'Maintain documented procedures for: (1) acquisition of reference materials (RM) — selection criteria, supplier evaluation, order specification; (2) preservation — storage conditions, handling precautions, stability monitoring; (3) maintenance — inspection schedule, cleaning requirements; (4) confirmation — verification of RM suitability and traceability before use. All four procedures must be documented and followed for CRMs, working standards, and check standards used in accredited testing.',
  evidence_suggestion = 'RM management procedure (covering all four steps: acquisition, preservation, maintenance, confirmation); RM storage condition records (temperature/humidity logs where applicable); RM stability check/confirmation records; RM disposal records for expired materials',
  prefilled_notes    = 'SR-01 §6.5 explicitly requires documented procedures for all four RM lifecycle phases. This is often covered in a single ''Reference Material Management Procedure''. Key practical point: CRMs stored beyond their certified expiry date must not be used for accredited testing even if the material appears unchanged. The certificate validity date is binding.',
  applicable_section = 'Both',
  status             = 'Not Yet Assessed'
WHERE id = 'R96';

UPDATE requirements SET
  clause_ref         = 'SR-01 §7.8',
  description        = 'Maintain a current copy of AOSC GR-02 (Use of Accreditation Symbol) and review all test report templates against GR-02 requirements after every accreditation assessment and whenever GR-02 is revised. Where a test report includes both accredited and non-accredited results, the scope of accreditation must be clearly delineated in the report so customers can distinguish which results carry accredited status.',
  evidence_suggestion = 'Current AOSC GR-02 document on file (version-controlled); Test report template review checklist against GR-02 requirements; Sample issued reports with mixed accredited/non-accredited results showing clear delineation; Customer notification procedure for report template changes',
  prefilled_notes    = 'SR-01 §7.8 supplementary note: GR-02 is the AOSC guidance document for accreditation symbol use. It specifies exact format, placement, and prohibited uses of the VILAT/VLAC symbols. Template review is needed after SA1 and before SA2 to ensure compliance is maintained. Obtain the latest GR-02 from AOSC directly or from their website.',
  applicable_section = 'Lab-wide',
  status             = 'Not Yet Assessed'
WHERE id = 'R97';

UPDATE requirements SET
  clause_ref         = 'Annex I / GC',
  description        = 'Gas Chromatograph — CL-2017-001, CL-2018-001 (Agilent 8890 GC, Da Vinci): Calibrate temperature-controlling systems (column oven, injector, detector) annually via a VILAS-accredited calibration lab. Verify GC detector response and linearity by running a certified reference standard before each analytical sequence. Record calibration certificates and detector performance data in each instrument''s history file.',
  evidence_suggestion = 'Annual calibration certificates for GC temperature systems (CL-2017-001 and CL-2018-001); Detector linearity / calibration curve records per analysis run; GC equipment history files',
  prefilled_notes    = 'SR-01 Annex I (Gas Chromatograph — temperature). Max calibration interval: 1 year. Verify exact item number against current SR-01 Annex I. Temperature calibration points: at least at the programmed column oven set-point and injector temperature used in accredited methods.',
  applicable_section = 'QC-Olefins & UT',
  status             = 'Not Yet Assessed'
WHERE id = 'R98';

UPDATE requirements SET
  clause_ref         = 'Annex I / PG',
  description        = 'Pressure Gauge — CL-2034-001, CL-2035-001 (Nuova Fima, EN837-1): Submit each pressure gauge to a VILAS-accredited calibration lab for annual calibration covering the full working range used in testing. Verify that the calibration certificate includes measurement uncertainty and a traceability statement to SI. Apply correction factors from the certificate where gauge error exceeds method tolerance.',
  evidence_suggestion = 'Annual calibration certificates for CL-2034-001 and CL-2035-001 (pressure range calibrated, measurement uncertainty stated); Correction factor records if applied; Equipment history files',
  prefilled_notes    = 'SR-01 Annex I (Pressure Gauge). Max calibration interval: 1 year. Verify exact item number against current SR-01 Annex I. EN837-1 Bourdon tube gauges: accuracy class must meet method requirement. Inspect for physical damage (cracked glass, bent pointer) before each use.',
  applicable_section = 'QC-Olefins & UT',
  status             = 'Not Yet Assessed'
WHERE id = 'R99';

UPDATE requirements SET
  clause_ref         = 'Annex I / BAL',
  description        = 'Analytical Balance — CL-2044-001 (Mettler Toledo MS304TS/00, 320 g, 0.1 mg): Submit to a VILAS-accredited calibration lab annually for full calibration (linearity across range, repeatability, eccentricity, minimum weighing capacity). Perform a daily single-point check using a class E2 or F1 reference weight before each day of use; record the reading and acceptance/rejection outcome.',
  evidence_suggestion = 'Annual calibration certificate (CL-2044-001) from VILAS-accredited lab; Daily balance check log (date, reference weight used, balance reading, tolerance, pass/fail, person); Reference weight calibration certificate',
  prefilled_notes    = 'SR-01 Annex I (Analytical Balance). Max external calibration interval: 1 year. Verify exact item number against current SR-01 Annex I. Daily check tolerance: ±0.0002 g (0.2 mg) for class I analytical balance. Reference weights must themselves be calibrated (class E2 or F1) with valid certificate.',
  applicable_section = 'QC-Olefins & UT',
  status             = 'Not Yet Assessed'
WHERE id = 'R100';

UPDATE requirements SET
  clause_ref         = 'Annex I / MFI-T',
  description        = 'Extrusion Plastometer Temperature System — CL-5001 to CL-5005 series (Zwickroell Mflow, 5 units): Calibrate the temperature sensor / thermocouple in each MFI tester cylinder annually via a VILAS-accredited calibration lab. Verify actual cylinder temperature at each test setpoint used (e.g., 190 °C and 230 °C per ISO 1133). Tolerance: ±0.5 °C at setpoint (per ISO 1133). Apply a correction if deviation exceeds tolerance.',
  evidence_suggestion = 'Annual calibration certificates for temperature sensors in each MFI unit (CL-5001-xxx through CL-5005-xxx); Temperature verification records at test setpoints; Correction application records where deviation found',
  prefilled_notes    = 'SR-01 Annex I (Extrusion Plastometer — temperature). Max calibration interval: 1 year. Verify exact item number against current SR-01 Annex I. 5 MFI units each require an individual calibration certificate. ISO 1133 requires temperature stability ±0.5 °C at setpoint — verify stability over at least 15 minutes before recording.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R101';

UPDATE requirements SET
  clause_ref         = 'Annex I / MFI-W',
  description        = 'Extrusion Plastometer Standard Weights — CL-5001 to CL-5005 series (2.16 kg and 5.00 kg weight sets for each unit): Submit each weight set to a VILAS-accredited calibration lab annually. Calibration must confirm total load applied (piston rod + weight) within ±0.5 % of nominal value (per ISO 1133). Keep each weight set associated with its corresponding unit and clearly labelled.',
  evidence_suggestion = 'Annual mass calibration certificates for each weight set (2.16 kg and 5.00 kg, per unit CL-5001 to CL-5005); Weight identity labels on each weight; Traceability statement and measurement uncertainty on certificates',
  prefilled_notes    = 'SR-01 Annex I (Extrusion Plastometer — weights/loads). Max calibration interval: 1 year. Verify exact item number against current SR-01 Annex I. Total applied load = piston rod mass + added weight. Ensure calibration covers the combined piston+weight assembly where the calibration lab can weigh the assembly together.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R102';

UPDATE requirements SET
  clause_ref         = 'Annex I / MFI-TI',
  description        = 'Extrusion Plastometer Timing Device — CL-5001 to CL-5005 series (digital encoder / electronic timer in each unit): Verify or calibrate the timing device in each MFI unit annually. Accuracy requirement: ±0.1 s or better (per ISO 1133 cut-off interval requirements). Use a traceable time reference (GPS-synchronised stopwatch or VILAS-calibrated timer). Record the check result and acceptance outcome for each unit.',
  evidence_suggestion = 'Annual timing verification / calibration records (per unit, CL-5001 to CL-5005); Traceable reference used for comparison; Calibration certificate if sent externally',
  prefilled_notes    = 'SR-01 Annex I (Extrusion Plastometer — timing device). Max calibration interval: 1 year. Verify exact item number against current SR-01 Annex I. Electronic timers in modern MFI units are generally stable but must still be verified against a traceable standard annually.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R103';

UPDATE requirements SET
  clause_ref         = 'Annex I / MFI-D',
  description        = 'Extrusion Plastometer Die Orifice & Cylinder Bore — CL-5001 to CL-5005 series: Have the die orifice internal diameter, orifice length, and cylinder bore of each unit measured annually by a VILAS-accredited dimensional calibration lab. Acceptance limits per ISO 1133: die orifice diameter (2.095 ± 0.005) mm, orifice length 8.00 mm ± 0.025 mm. Replace die or cylinder if dimensions are out of tolerance.',
  evidence_suggestion = 'Annual dimensional calibration certificates for dies and cylinders of each MFI unit (CL-5001 to CL-5005); Replacement records for worn dies/cylinders',
  prefilled_notes    = 'SR-01 Annex I (Extrusion Plastometer — die/cylinder dimensions). Max calibration interval: 1 year. Verify exact item number against current SR-01 Annex I. Die wear is the most common cause of MFI drift. If |z| > 2 in PT, check die dimensions first. Replace die if bore is ≥ 2.100 mm.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R104';

UPDATE requirements SET
  clause_ref         = 'Annex I / MFI-P',
  description        = 'Extrusion Plastometer Piston — CL-5001 to CL-5005 series: Check piston tip diameter and reference marks annually or whenever piston is replaced. Piston tip diameter per ISO 1133: (9.475 ± 0.015) mm. Reference marks (at 30 mm and 50 mm from piston tip) must be visible and accurate to ±0.1 mm. Replace piston if worn outside tolerance. Record dimensional check results for each unit.',
  evidence_suggestion = 'Annual piston dimensional check records (tip diameter, reference mark positions) per unit; Replacement records for worn pistons',
  prefilled_notes    = 'SR-01 Annex I (Extrusion Plastometer — piston). Verify exact item number against current SR-01 Annex I. Piston tip wear affects the seal with the cylinder and can introduce leakage errors in MFR/MVR measurements. Dimension checks can be performed with a calibrated micrometer.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R105';

UPDATE requirements SET
  clause_ref         = 'Annex I / DEN-TH',
  description        = 'Density Gradient Column — Glass Thermometer — CL-5022-003 (Shibayama Scientific, Type A): Calibrate annually by a VILAS-accredited calibration lab at temperature points relevant to the density test (typically 23 °C per ISO 1183-2). Calibration certificate must include correction values and measurement uncertainty at each calibration point. Apply corrections when reading the column temperature during testing.',
  evidence_suggestion = 'Annual calibration certificate for CL-5022-003 (calibrated at 23 °C or relevant temperature points, with correction values and measurement uncertainty); Equipment history file',
  prefilled_notes    = 'SR-01 Annex I (Glass Thermometer). Max calibration interval: 1 year. Verify exact item number against current SR-01 Annex I. This thermometer is the primary temperature reference for the density column. Its calibration uncertainty is a key contributor to MU budget for the density determination method.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R106';

UPDATE requirements SET
  clause_ref         = 'Annex I / DEN-WB',
  description        = 'Density Gradient Column — Water Bath — CL-5022-002 (Shibayama Scientific, Type A): Verify water bath temperature uniformity and stability annually using the calibrated glass thermometer (CL-5022-003). Measure temperature at multiple positions in the bath. Acceptance criteria: temperature at column location must be 23.0 ± 0.1 °C (per ISO 1183-2) with stability better than ±0.1 °C over the test duration. Record verification results.',
  evidence_suggestion = 'Annual temperature uniformity and stability verification records (CL-5022-002); Calibrated thermometer (CL-5022-003) used for verification; Temperature stability log during density tests',
  prefilled_notes    = 'SR-01 Annex I (Density Water Bath — temperature). Verify exact item number against current SR-01 Annex I. The water bath controller is verified via the calibrated thermometer; the bath itself does not require separate external calibration if the thermometer verification confirms compliance with ISO 1183-2 temperature requirements.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R107';

UPDATE requirements SET
  clause_ref         = 'Annex I / DEN-SF',
  description        = 'Density Gradient Column — Standard Density Floats — CL-5022-005-01 to CL-5022-005-26 (26 floats, Shibayama Scientific, Type A, density range 0.9108–0.9719 g/cm³): Have all density floats recalibrated by the supplier (Shibayama Scientific) or a VILAS-accredited lab at the interval specified in SR-01 Annex I (verify — typically every 2 years). Calibration must confirm the assigned density value ± stated uncertainty. Segregate and remove from use any float with a damaged surface or illegible ID.',
  evidence_suggestion = 'Calibration certificates for all 26 standard floats (CL-5022-005-01 to -26) with density values and uncertainties; Float condition inspection records; Disposal/replacement records for damaged floats',
  prefilled_notes    = 'SR-01 Annex I (Density Standard Floats). Max calibration interval: verify against current SR-01 Annex I (typically 2 years; floats are stable reference artefacts). Floats used beyond their calibration validity = nonconformity. The calibration uncertainty of the floats directly limits the achievable measurement uncertainty of the density result.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R108';

UPDATE requirements SET
  clause_ref         = 'Annex I / DEN-TU',
  description        = 'Density Gradient Column — Density Tubes — CL-5022-004-01 to CL-5022-004-06 (6 glass tubes, Shibayama Scientific, Type A): Inspect each tube before use for scratches, chips, cloudiness, or contamination that could affect float reading accuracy. Record the inspection outcome. Clean with appropriate solvent and dry before each use. Glass tubes are not individually calibrated; if a tube is physically damaged, replace it and notify the Technical Manager.',
  evidence_suggestion = 'Pre-use tube inspection records (date, ID, condition, pass/fail); Cleaning procedure; Replacement records for damaged tubes',
  prefilled_notes    = 'SR-01 Annex I does not typically require individual calibration of density column tubes — their function is geometric containment, not measurement. The measurement reference is provided by the standard floats (CL-5022-005). However, damaged or dirty tubes cause reading errors and must be replaced immediately.',
  applicable_section = 'QC-Polyolefins',
  status             = 'Not Yet Assessed'
WHERE id = 'R109';

COMMIT;

-- Verification query — should return 43 rows for SR-01:
-- SELECT id, clause_ref, LEFT(description, 60) AS desc_preview
--   FROM requirements
--  WHERE source = 'SR-01'
--  ORDER BY sort_order;