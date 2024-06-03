Instance: Questionnaire-StudyVariable
InstanceOf: Questionnaire
Usage: #example
* version = "1.0.0"
* name = "StudyVariableExtraction"
* title = "Study variable Extraction"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2024-03-26"
* description = "Study variable extractable questionnaire"
// * jurisdiction = $m49.htm#001 "World" // Change to Europe
* item[0].linkId = "procedure-group"
* item[=].definition = "http://fhir.org#Procedure"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "patient"
* item[=].item[=].definition = "http://fhir.org#Procedure.subject"
* item[=].item[=].text = "Patient"
* item[=].item[=].type = #reference
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "category"
* item[=].item[=].definition = "http://fhir.org#Procedure.category.coding"
* item[=].item[=].code = $loinc#LP200041-4
* item[=].item[=].text = "Category"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "procedure-status"
* item[=].item[=].definition = "http://fhir.org#Procedure.status"
* item[=].item[=].code = $loinc#LP200041-4
* item[=].item[=].text = "Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/event-status"
* item[=].item[+].linkId = "age-at-biopsy"
* item[=].item[=].definition = "http://fhir.org#Procedure.performed"
* item[=].item[=].code = $loinc#LP200041-4
* item[=].item[=].text = "Age at biopsy"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "type-of-biopsy"
* item[=].item[=].definition = "http://fhir.org#Procedure.code"
* item[=].item[=].code = $loinc#LP200041-4
* item[=].item[=].text = "Type of biopsy"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "https://flute.com/fhir/ValueSet/VS-BiopsyType"
* item[+].linkId = "family-history-group"
* item[=].definition = "http://fhir.org#FamilyMemberHistory"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "family-history-pca"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.condition.code"
* item[=].item[=].code = $sct#399068003
* item[=].item[=].text = "Family history of prostate cancer"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "family-status"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.status"
* item[=].item[=].code = $sct#399068003
* item[=].item[=].text = "Family Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/history-status"
* item[=].item[+].linkId = "family-patient"
* item[=].item[=].definition = "http://fhir.org#FamilyMemberHistory.patient"
* item[=].item[=].code = $sct#399068003
* item[=].item[=].text = "Family Patient"
* item[=].item[=].type = #reference
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[+].linkId = "observation-psa-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "psa"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].code = $loinc#LP18193-0
* item[=].item[=].text = "Measure of prostate-specific antigen reported in ng/ml"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "psa-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code"
* item[=].item[=].code = $loinc#LP18193-0
* item[=].item[=].text = "PSA code"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "psa-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].code = $loinc#LP18193-0
* item[=].item[=].text = "PSA Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/observation-status"
* item[+].linkId = "observation-dre-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "dre"
* item[=].item[=].definition = "http://fhir.org#Observation.interpretation"
* item[=].item[=].code = $loinc#LL1478-8
* item[=].item[=].text = "Results of digital rectal examination"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "https://flute.com/fhir/ValueSet/VS-DREOutcomeCode"
* item[=].item[+].linkId = "dre-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code"
* item[=].item[=].code = $loinc#LL1478-8
* item[=].item[=].text = "DRE code"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "dre-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].code = $loinc#LL1478-8
* item[=].item[=].text = "DRE Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/observation-status"
* item[+].linkId = "observation-prostate-volume-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "prostate-volume"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].code = $sct#41216001
* item[=].item[=].text = "Prostate volume in cc"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "prostate-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code"
* item[=].item[=].code = $sct#118565006
* item[=].item[=].text = "Prostate volume code"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "prostate-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].code = $sct#41216001
* item[=].item[=].text = "Prostate volume Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/observation-status"
* item[=].item[+].linkId = "prostate-bodySite"
* item[=].item[=].definition = "http://fhir.org#Observation.bodySite"
* item[=].item[=].code = $sct#41216001
* item[=].item[=].text = "Prostate volume bodySite"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[+].linkId = "observation-pirads-group"
* item[=].definition = "http://fhir.org#Observation"
* item[=].text = "Observation group"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "pirads"
* item[=].item[=].definition = "http://fhir.org#Observation.value"
* item[=].item[=].code = $sct#52988006
* item[=].item[=].text = "PI-RADS score"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[+].linkId = "pirads-code"
* item[=].item[=].definition = "http://fhir.org#Observation.code"
* item[=].item[=].code = $sct#52988006
* item[=].item[=].text = "PI-RADS code"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "pirads-status"
* item[=].item[=].definition = "http://fhir.org#Observation.status"
* item[=].item[=].code = $sct#52988006
* item[=].item[=].text = "PI-RADS Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/observation-status"