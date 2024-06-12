Instance: InclusionCriterias2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/ig/flute/ConceptMap/InclusionCriterias"
* version = "0.1.0"
* name = "InclusionCriterias2FHIR"
* title = "Concept Map for Inclusion Criteria to FHIR"
* status = #draft
* experimental = true
* date = "2024-05-31T14:49:32+00:00"
* publisher = "Flute Project"
* contact[0].name = "Flute Project"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.flute.eu/"
* contact[+].name = "Flute Project"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.flute.eu/"
* description = "Concept map defining the inclusion criteria for prostate cancer cohorts, mapping study variables to FHIR resources."
* jurisdiction = $m49.htm#150 "Europe"
* purpose = "To standardize the inclusion criteria for prostate cancer research studies by mapping study variables to FHIR resources."

* group[+].source = Canonical(StudyVariables)
* group[=].target = Canonical(PR_ProstateSpecificAntigen)
* group[=].element[0].code = #StudyVariables.psa
* group[=].element[=].display = "PSA"
* group[=].element[=].target[+].code = #Observation.where(code='http://loinc.org|2857-1').value
* group[=].element[=].target[=].equivalence = #equal

* group[+].source = Canonical(StudyVariables)
* group[=].target = Canonical(PR_DigitalRectalExamination)
* group[=].element[0].code = #StudyVariables.dre
* group[=].element[=].display = "Rectal examination"
* group[=].element[=].target[+].code = #Procedure.where(code='http://snomed.info/sct|410006001').outcome
* group[=].element[=].target[=].equivalence = #relatedto

