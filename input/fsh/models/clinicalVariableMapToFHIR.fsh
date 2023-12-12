Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: StudyVariables2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/flute/ConceptMap/cancerEpisode2FHIR"
* version = "0.1.0"
* name = "StudyVariables2FHIR"
* title = "Study variables Model to this guide Map"
* status = #draft
* experimental = true
* date = "2023-12-06T12:26:32+00:00"
* publisher = "Flute Project"
* contact[0].name = "Flute Project"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.flute.eu/"
* contact[+].name = "Flute Project"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.flute.eu/"
* description = "Study variables Model to this guide Map"
* jurisdiction = $m49.htm#150 "Europe"
* purpose = "It shows how the Study variables model is mapped into this guide"
* sourceUri = "http://hl7.eu/fhir/ig/flute/StructureDefinition/StudyVariables"
* targetUri = "http://hl7.org/fhir/r4"
* group[+].source = "https://flute.com/StructureDefinition/StudyVariables"
* group[=].target = "https://flute.com/StructureDefinition/BiopsyProcedure"
* group[=].element[0].code = #StudyVariables.patient
* group[=].element[=].display = "Patient"
* group[=].element[=].target.code = #Procedure.subject
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #StudyVariables.typeOfBiopsy
* group[=].element[=].display = "Type of biopsy"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = ""
* group[=].element[+].code = #CancerEpisode.ageAtBiopsy
* group[=].element[=].display = "Age at Biopsy"
* group[=].element[=].target.code = #Procedure.occurrenceAge
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "to be checked if an onSetdatTime or period is needed"

* group[+].source = "https://flute.com/StructureDefinition/StudyVariables"
* group[=].target = "https://flute.com/StructureDefinition/PcaFmilyHistory"
* group[=].element[0].code = #StudyVariables.PCaFamilyHistory
* group[=].element[=].display = "PCa family history"
* group[=].element[=].target.code = #FamilyMemberHistory.condition.code
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://flute.com/StructureDefinition/StudyVariables"
* group[=].target = "https://flute.com/StructureDefinition/ProstateSpecificAntigen"
* group[=].element[0].code = #StudyVariables.PSA
* group[=].element[=].display = "PCa family history"
* group[=].element[=].target.code = #Observation.valueQuantity
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://flute.com/StructureDefinition/StudyVariables"
* group[=].target = "https://flute.com/StructureDefinition/DigitalRectalExamination"
* group[=].element[0].code = #StudyVariables.DRE
* group[=].element[=].display = "PCa family history"
* group[=].element[=].target.code = #Observation.valueQuantity
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://flute.com/StructureDefinition/StudyVariables"
* group[=].target = "https://flute.com/StructureDefinition/ProstateVolume"
* group[=].element[0].code = #StudyVariables.prostateVolume
* group[=].element[=].display = "PCa family history"
* group[=].element[=].target.code = #Observation.valueQuantity
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://flute.com/StructureDefinition/StudyVariables"
* group[=].target = "https://flute.com/StructureDefinition/PIRADSScore"
* group[=].element[0].code = #StudyVariables.PIRADS
* group[=].element[=].display = "PCa family history"
* group[=].element[=].target.code = #Observation.valueInteger
* group[=].element[=].target.equivalence = #equal

