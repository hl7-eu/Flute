Profile: PR_ProstateVolume
Parent: Observation
Id: PR-ProstateVolume
Title: "Observation: prostate volume"
Description: "Observation for measuring the volume of the prostate."
* code = $sct#1297142007 "Volume of prostate"
* subject 1.. 
* bodySite = $sct#41216001 "Prostatic structure (body structure)"
* subject only Reference(Patient)
* valueQuantity 1..1
* valueQuantity.value 1..1 
* valueQuantity.value obeys rule-1
* valueQuantity.unit = "cc"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm3

