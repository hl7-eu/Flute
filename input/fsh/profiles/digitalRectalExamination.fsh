Profile: DigitalRectalExamination
Parent: Observation
Id: DigitalRectalExamination
Title: "Observation: digital rectal examination"
Description: "An observation recording the findings of a digital rectal examination (DRE), specifically assessing the prostate in patients with study suspicion of prostate cancer."
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
* code = $loinc#LL1478-8 "Rectal examination of prostate"
* subject 1.. 
* subject only Reference(Patient)
* interpretation 1..1 
* interpretation from DREObservationInterpretationCode (required)
* interpretation.coding 1..1
* interpretation.coding.code 1..1 
* component ..0