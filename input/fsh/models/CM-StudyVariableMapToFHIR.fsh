Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: CM-StudyVariables2FHIR
InstanceOf: ConceptMap
Usage: #definition
* version = "1.0.0"
* name = "StudyVariables2FHIR"
* title = "Study variables Model to FHIR R4 Map"
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
* sourceUri = Canonical(StudyVariables)
* targetUri = "http://hl7.org/fhir/r4"
* group[+].source = Canonical(StudyVariables)
* group[=].target = Canonical(PR_Biopsy)
* group[=].element[+].code = #StudyVariables.typeOfBiopsy
* group[=].element[=].display = "Type of biopsy"
* group[=].element[=].target[+].code = #Procedure.code
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #StudyVariables.ageAtBiopsy
* group[=].element[=].display = "Age at Biopsy"
* group[=].element[=].target[+].code = #Procedure.performedAge
* group[=].element[=].target[=].equivalence = #equal

* group[+].source = Canonical(StudyVariables)
* group[=].target = Canonical(PR_ProstateCancerFamilyHistory)
* group[=].element[0].code = #StudyVariables.pcaFamilyHistory
* group[=].element[=].display = "PCa family history"
* group[=].element[=].target[+].code = #FamilyMemberHistory.condition.code
* group[=].element[=].target[=].equivalence = #equivalent

* group[+].source = Canonical(StudyVariables)
* group[=].target = Canonical(PR_ProstateSpecificAntigen)
* group[=].element[0].code = #StudyVariables.psa
* group[=].element[=].display = "PSA"
* group[=].element[=].target[+].code = #Observation.valueQuantity
* group[=].element[=].target[=].equivalence = #equal

* group[+].source = Canonical(StudyVariables)
* group[=].target = Canonical(PR_DigitalRectalExamination)
* group[=].element[0].code = #StudyVariables.dre
* group[=].element[=].display = "Rectal examination"
* group[=].element[=].target[+].code = #Procedure.outcome
* group[=].element[=].target[=].equivalence = #relatedto

* group[+].source = Canonical(StudyVariables)
* group[=].target = Canonical(PR_ProstateVolume)
* group[=].element[0].code = #StudyVariables.prostateVolume
* group[=].element[=].display = "MRI_prostate volume"
* group[=].element[=].target[+].code = #Observation.valueQuantity
* group[=].element[=].target[=].equivalence = #equal

* group[+].source = Canonical(StudyVariables)
* group[=].target = Canonical(PR_PIRADSScore)
* group[=].element[0].code = #StudyVariables.pirads
* group[=].element[=].display = "PI-RADS"
* group[=].element[=].target[+].code = #Observation.valueCodeableConcept
* group[=].element[=].target[=].equivalence = #relatedto

