Profile: ProstateVolume
Parent: Observation
Id: ProstateVolume
Title: "Observation: prostate volume"
Description: "Observation for measuring the volume of the prostate."
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
* code = $sct#118565006 "Volume"
* subject 1.. 
* bodySite = $sct#41216001 "Prostatic structure (body structure)"
* subject only Reference(Patient)
* valueQuantity 1..1
* valueQuantity.value 1..1 
* valueQuantity.unit = "cc"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm3
* component ..0