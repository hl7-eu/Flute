Alias: $biopsy-type = http://hl7.eu/fhir/ig/flute/CodeSystem/biopsy-type

ValueSet: BiopsyType
Id: biopsy-type
Title: "Type of Biopsy"
Description: "ValueSet for categorizing types of biopsy as initial or repeated"
* ^experimental = true
* $biopsy-type#initial "Initial Biopsy"
* $biopsy-type#repeated "Repeated Biopsy"