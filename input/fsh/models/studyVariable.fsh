Logical: StudyVariables
Id: StudyVariables
Title: "Prostate Cancer study Variables"
Description: """Study variables for a study on prostate cancer."""
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Flute Project"
* ^contact[0].name = "Flute Project"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://flute.eu/"
* ^contact[+].name = "Flute Project"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://flute.eu/"
* ^jurisdiction.coding.system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction.coding.code = #150
* ^jurisdiction.coding.display = "Europe"
* . ^short = "Prostate Cancer study Variables"
* . ^definition = "Study variables for a study on prostate cancer"
* patient 1..1 http://hl7.org/fhir/StructureDefinition/Patient "Patient"
* ageAtBiopsy 1..1 integer "Age at the time of biopsy. Represents the patient's age when the biopsy was performed."
* PCaFamilyHistory 1..1  boolean "Family history of prostate cancer. Indicates whether the patient has a known family history of prostate cancer (0: No, 1: Yes)."
* typeOfBiopsy 1..1  CodeableConcept "Type of biopsy. Specifies whether the biopsy was an initial biopsy or a repeated one (0: initial, 2: repeated)."
* PSA 1..1 Quantity "Level of prostate-specific antigen. The measurement of PSA levels in the blood, typically reported in ng/ml."
* DRE 1..1 CodeableConcept "Results of digital rectal examination. Indicates the findings of the DRE (0: normal, 1: suspicious)."
* prostateVolume 1..1 Quantity "Prostate volume as determined by MRI. The measured volume of the prostate, typically reported in cubic centimeters (cc)."
* PIRADS 1..1  integer "PI-RADS score. The Prostate Imaging Reporting and Data System score used to assess prostate cancer risk on MRI."

Mapping: StudyVariablesToFHIR
Id: StudyVariablesToFHIR
Title: "Prostate Cancer Study Variables to FHIR R4 Profiles"
Source: StudyVariables
Target: "http://hl7.org/fhir/r4"
* -> "FHIR R4"
* patient -> "Procedure.where(category = 'http://loinc.org|LP200041-4').subject"
* ageAtBiopsy -> "Procedure.where(category = 'http://loinc.org|LP200041-4').performedAge"
* PCaFamilyHistory -> "FamilyMemberHistory.condition.where(code.coding.system = 'http://snomed.info/sct' and code.coding.code = '399068003').exists()"
* typeOfBiopsy -> "Procedure.where(category = 'http://loinc.org|LP200041-4').code"
* PSA -> "Observation.where(code = 'http://loinc.org|LP18193-0').value"
* DRE -> "Observation.where(code = 'http://loinc.org|LL1478-8').interpretation"
* prostateVolume -> "Observation.where(code = 'http://snomed.info/sct|118565006' and bodySite = 'http://snomed.info/sct|41216001').valueQuantity"
* PIRADS -> "Observation.where(reasonCode = 'http://snomed.info/sct|52988006').valueInteger"

