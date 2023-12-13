Alias: $biopsy-type = http://hl7.eu/fhir/ig/flute/CodeSystem/biopsy-type

ValueSet: BiopsyType
Id: biopsy-type
Title: "Type of Biopsy"
Description: "ValueSet for categorizing types of biopsy as initial or repeated"
* ^url = "http://hl7.eu/fhir/ig/flute/ValueSet/biopsy-type-vs"
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
* $biopsy-type#initial "Initial Biopsy"
* $biopsy-type#repeated "Repeated Biopsy"