Profile: TypeOfBiopsy
Parent: Procedure
Id: BiopsyProcedure
Title: "Procedure: biopsy"
Description: "This profile represents the type of biopsy procedure performed on a patient."
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
* category = $loinc#LP200041-4 "Biopsy"
* code 1..1 
* code from BiopsyType (required)
* subject 1..
* subject only Reference(Patient)
* performedAge 1..
* bodySite = $sct#41216001 "Prostatic structure (body structure)"