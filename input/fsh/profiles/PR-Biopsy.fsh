Profile: PR_Biopsy
Parent: Procedure
Id: PR-Biopsy
Title: "Procedure: biopsy"
Description: "This profile represents the biopsy procedure performed on a patient."
* category 1..1 
* category from VS_BiopsyType (required)
* category.coding 1..
* code = $sct#86273004 "Biopsy"
* subject 1..
* subject only Reference(Patient)
* performed[x] 1..
* performedAge 1..
* bodySite.coding = $sct#41216001 "Prostatic structure (body structure)"