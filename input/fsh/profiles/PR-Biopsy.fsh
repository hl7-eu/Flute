Profile: PR_Biopsy
Parent: Procedure
Id: PR-Biopsy
Title: "Procedure: biopsy"
Description: "This profile represents the biopsy procedure performed on a patient."
* category 1..1 
* category from VS_BiopsyType (required)
* code = $sct#86273004 "Biopsy"
* subject 1..
* subject only Reference(Patient)
* performedAge 1..
* bodySite = $sct#41216001 "Prostatic structure (body structure)"