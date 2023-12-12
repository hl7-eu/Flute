Alias: $sct = http://snomed.info/sct

Profile: PIRADSScore
Parent: Observation
Id: PIRADSScore
Title: "RiskAssessment: prostate cancer risk"
Description: "A risk assessment based on the PI-RADS (Prostate Imaging-Reporting and Data System) scoring system."
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
* code = $sct#52988006 "Lesion"
* subject only Reference(Patient)
* method 1..1 
* method ^comment = "PIRADS"
* valueInteger 1..1
* bodySite = $sct#41216001 "Prostatic structure (body structure)"
* component ..0
