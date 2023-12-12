Logical: ProstateCancerClinicalVariables
Id: prostate-cancer-clinical-variable 
Title: "Prostate Cancer clinical Variables"
Description: """Clinical variables for a study on prostate cancer."""
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
* . ^short = "Prostate Cancer clinical Variables"
* . ^definition = "Clinical variables for a study on prostate cancer"
* ageAtBiopsy 1..1 integer "Age at the time of biopsy. Represents the patient's age when the biopsy was performed."
* familyHistoryPCa 1..1  boolean "Family history of prostate cancer. Indicates whether the patient has a known family history of prostate cancer (0: No, 1: Yes)."
* typeOfBiopsy 1..1  CodeableConcept "Type of biopsy. Specifies whether the biopsy was an initial biopsy or a repeated one (0: initial, 2: repeated)."
* PSA 1..1 Quantity "Level of prostate-specific antigen. The measurement of PSA levels in the blood, typically reported in ng/ml."
* DRE 1..1 CodeableConcept "Results of digital rectal examination. Indicates the findings of the DRE (0: normal, 1: suspicious)."
* prostateVolume 1..1 Quantity "Prostate volume as determined by MRI. The measured volume of the prostate, typically reported in cubic centimeters (cc)."
* PIRADS 1..1  CodeableConcept "PI-RADS score. The Prostate Imaging Reporting and Data System score used to assess prostate cancer risk on MRI."
