Instance: CM-Requirements2StudyVariables
InstanceOf: ConceptMap
Usage: #definition
* version = "1.0.0"
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
/* * jurisdiction = $m49.htm#150 "Europe" */
* purpose = "It shows how the Requirements is mapped into Study variables model"
* sourceUri = "http://hl7.eu/fhir/ig/flute/ImplementationGuide/flute.requirements"
* targetUri = Canonical(StudyVariables)

* group[+].element[+].code = #http://hl7.eu/fhir/ig/flute/Requirements/F-PIL-27
* group[=].element[=].target[+].code = #StudyVariables.ageAtBiopsy
* group[=].element[=].target[=].display = "Age at Biopsy"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #http://hl7.eu/fhir/ig/flute/Requirements/F-PIL-7
* group[=].element[=].target[+].code = #StudyVariables.pcaFamilyHistory
* group[=].element[=].target[=].display = "PCa family history"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #http://hl7.eu/fhir/ig/flute/Requirements/F-PIL-28
* group[=].element[=].target[+].code = #StudyVariables.typeOfBiopsy
* group[=].element[=].target[=].display = "Type of Biopsy"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #http://hl7.eu/fhir/ig/flute/Requirements/F-PIL-29
* group[=].element[=].target[+].code = #StudyVariables.psa
* group[=].element[=].target[=].display = "PSA"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #http://hl7.eu/fhir/ig/flute/Requirements/F-PIL-30
* group[=].element[=].target[+].code = #StudyVariables.dre
* group[=].element[=].target[=].display = "Rectal examination"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #http://hl7.eu/fhir/ig/flute/Requirements/F-PIL-31
* group[=].element[=].target[+].code = #StudyVariables.prostateVolume
* group[=].element[=].target[=].display = "MRI-prostate volume"
* group[=].element[=].target[=].equivalence = #relatedto

* group[=].element[+].code = #http://hl7.eu/fhir/ig/flute/Requirements/F-PIL-32
* group[=].element[=].target[+].code = #StudyVariables.pirads
* group[=].element[=].target[=].display = "PI-RADS"
* group[=].element[=].target[=].equivalence = #relatedto