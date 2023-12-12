ValueSet: DREObservationInterpretationCode
Id: dre-observation-interpretation-vs
Title: "DRE Observation Interpretation Codes"
Description: "This ValueSet includes codes for interpreting the results of a digital rectal examination (DRE) in the context of prostate assessment."
* ^url = "http://hl7.eu/fhir/ig/flute/ValueSet/dre-observation-interpretation-vs"
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
* ^compose.lockedDate = "2023-12-05"
* ^compose.inactive = true
* ObservationInterpretation#N "Normal"
* ObservationInterpretation#S "susceptible"