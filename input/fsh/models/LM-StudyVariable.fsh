Logical: StudyVariables
Id: StudyVariables
Title: "Prostate Cancer study Variables"
Description: "Study variables for a study on prostate cancer."
* patient 1..1 Reference(Patient) "Patient"
* ageAtBiopsy 1..1 integer "Age at the time of biopsy. Represents the patient's age when the biopsy was performed."
* pcaFamilyHistory 1..1  integer "Family history of prostate cancer. Indicates whether the patient has a known family history of prostate cancer (0: No, 1: Yes)."
* typeOfBiopsy 1..1  integer "Type of biopsy. Specifies whether the biopsy was an initial biopsy or a repeated one (0: initial, 2: repeated)."
* psa 1..1 Quantity "Level of prostate-specific antigen. The measurement of PSA levels in the blood, typically reported in ng/ml."
* dre 1..1 integer "Results of digital rectal examination. Indicates the findings of the DRE (0: normal, 1: suspicious)."
* prostateVolume 1..1 Quantity "Prostate volume as determined by MRI. The measured volume of the prostate, typically reported in cubic centimeters (cc)."
* pirads 1..1  integer "PI-RADS score. The Prostate Imaging Reporting and Data System score used to assess prostate cancer risk on MRI."

