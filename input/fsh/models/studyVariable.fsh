Logical: StudyVariables
Id: studyVariables
Title: "Prostate Cancer study Variables"
Description: """Study variables for a study on prostate cancer."""
* . ^short = "Prostate Cancer study Variables"
* . ^definition = "Study variables for a study on prostate cancer"
* patientIdentifier 1..1 Identifier "Patient Identifier" "Patient Identifier"
* ageAtBiopsy 1..1 integer "Age" "Age at the time of biopsy. Represents the patient's age when the biopsy was performed."
* pCaFamilyHistory 1..1  boolean "Family history of prostate cancer" "Family history of prostate cancer. Indicates whether the patient has a known family history of prostate cancer (0: No, 1: Yes)."
* typeOfBiopsy 1..1  CodeableConcept "Type of biopsy." "Type of biopsy. Specifies whether the biopsy was an initial biopsy or a repeated one (0: initial, 2: repeated)."
* psa 1..1 Quantity "Level of prostate-specific antigen" "Level of prostate-specific antigen. The measurement of PSA levels in the blood, typically reported in ng/ml."
* dre 1..1 CodeableConcept "Results of digital rectal examination." "Results of digital rectal examination. Indicates the findings of the DRE (0: normal, 1: suspicious)."
* prostateVolume 1..1 Quantity "Prostate volume" "Prostate volume as determined by MRI. The measured volume of the prostate, typically reported in cubic centimeters (cc)."
* piRads 1..1  integer "PI-RADS score." "PI-RADS score. The Prostate Imaging Reporting and Data System score used to assess prostate cancer risk on MRI."

Mapping: StudyVariablesToFHIR
Id: StudyVariablesToFHIR
Title: "Prostate Cancer Study Variables to FHIR R4 Profiles"
Source: StudyVariables
Target: "http://hl7.org/fhir"
* -> "FHIR R4"
* patientIdentifier -> "Procedure.where(category = 'http://loinc.org|LP200041-4').subject.ofType(Patient).resolve().identifier"
* ageAtBiopsy -> "Procedure.where(category = 'http://loinc.org|LP200041-4').performedAge"
* pCaFamilyHistory -> "FamilyMemberHistory.condition.where(code.coding.system = 'http://snomed.info/sct' and code.coding.code = '399068003').exists()"
* typeOfBiopsy -> "Procedure.where(category = 'http://loinc.org|LP200041-4').code"
* psa -> "Observation.where(code = 'http://loinc.org|LP18193-0').value"
* dre -> "Observation.where(code = 'http://loinc.org|LL1478-8').interpretation"
* prostateVolume -> "Observation.where(code = 'http://snomed.info/sct|118565006' and bodySite = 'http://snomed.info/sct|41216001').valueQuantity"
* piRads -> "Observation.where(reasonCode = 'http://snomed.info/sct|52988006').valueInteger"

