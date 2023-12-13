Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: Requirements2StudyVariables
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/flute/ConceptMap/Requirements2StudyVariables"
* version = "0.1.0"
* name = "Requirements2StudyVariables"
* title = "Requirements to Study variables Model Map"
* status = #draft
* experimental = true
* date = "2023-12-13T09:46:32+00:00"
* publisher = "Flute Project"
* contact[0].name = "Flute Project"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.flute.eu/"
* contact[+].name = "Flute Project"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.flute.eu/"
* description = "Requirements to Study variables Model Map"
* jurisdiction = $m49.htm#150 "Europe"
* purpose = "It shows how the Requirements is mapped into Study variables model"
* sourceUri = "https://flute.com/ImplementationGuide/flute.requirements"
* targetUri = "http://hl7.eu/fhir/ig/flute/StructureDefinition/StudyVariables"

* group[+].element[+].code = #https://flute.com/Requirements/F-PIL-27
* group[=].element[=].target[+].code = #CancerEpisode.ageAtBiopsy
* group[=].element[=].target[=].display = "Age at Biopsy"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #https://flute.com/Requirements/F-PIL-7
* group[=].element[=].target[+].code = #StudyVariables.PCaFamilyHistory
* group[=].element[=].target[=].display = "PCa family history"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #https://flute.com/Requirements/F-PIL-28
* group[=].element[=].target[+].code = #CancerEpisode.typeOfBiopsy
* group[=].element[=].target[=].display = "Type of Biopsy"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #https://flute.com/Requirements/F-PIL-29
* group[=].element[=].target[+].code = #StudyVariables.PSA
* group[=].element[=].target[=].display = "PSA"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #https://flute.com/Requirements/F-PIL-30
* group[=].element[=].target[+].code = #CancerEpisode.DRE
* group[=].element[=].target[=].display = "Rectal examination"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #https://flute.com/Requirements/F-PIL-31
* group[=].element[=].target[+].code = #CancerEpisode.prostateVolume
* group[=].element[=].target[=].display = "MRI-prostate volume"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #https://flute.com/Requirements/F-PIL-32
* group[=].element[=].target[+].code = #CancerEpisode.PIRADS
* group[=].element[=].target[=].display = "PI-RADS"
* group[=].element[=].target[=].equivalence = #relatedto