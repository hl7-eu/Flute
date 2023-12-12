Alias: $loinc = http://loinc.org

Profile: ProstateSpecificAntigen
Parent: Observation
Id: ProstateSpecificAntigen
Title: "Observation: prostate specific antigen"
Description: "Observation for the measurement of prostate specific antigen (PSA) levels in the blood."
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
* code = $loinc#LP18193-0 "Prostate specific Ag"
* subject 1.. 
* subject only Reference(Patient)
* valueQuantity 1..1
* valueQuantity.value 1..1 
* valueQuantity.unit = "ng/mL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #ng/mL
* component ..0