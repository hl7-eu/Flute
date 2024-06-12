Profile: PR_DigitalRectalExamination
Parent: Procedure
Id: PR-DigitalRectalExamination
Title: "Procedure: DRE"
Description: "This profile represents the digital rectal examination (DRE) procedure performed on a patient."
* code = $sct#410006001 "digital rectal examination"
* subject 1..
* subject only Reference(Patient)
* bodySite = $sct#41216001 "Prostatic structure (body structure)"
* outcome 1.. 
* outcome from VS-DREOutcomeCode (required)