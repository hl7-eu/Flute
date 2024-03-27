Alias: $launchContext = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: EXP-Questionnaire-StudyVariable
InstanceOf: Questionnaire
Usage: #example
* url = "https://flute.com/fhir/Questionnaire/EXP-Questionnaire-StudyVariable"
* version = "1.0.0"
* name = "StudyVariableExtraction"
* title = "Study variable Extraction"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2024-03-26"
* description = "Study variable extractable questionnaire"
* jurisdiction = $m49.htm#001 "World"

* item[+].linkId = "age-at-biopsy"
* item[=].text = "Age at biopsy"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].code = $sct#86273004

* item[+].linkId = "family-history-pca"
* item[=].text = "Family history of prostate cancer"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false

* item[+].linkId = "type-of-biopsy"
* item[=].text = "Type of biopsy"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].code = $sct#86273004
* item[=].answerValueSet = "https://flute.com/fhir/ValueSet/VS-BiopsyType"

* item[+].linkId = "psa"
* item[=].text = "Measure of prostate-specific antigen reported in ng/ml" 
* item[=].type = #quantity
* item[=].required = true
* item[=].repeats = false
* item[=].code = $loinc#19195-7

* item[+].linkId = "dre"
* item[=].text = "Results of digital rectal examination"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].code = $sct#410006001
* item[=].answerValueSet = "https://flute.com/fhir/ValueSet/VS-DREOutcomeCode"


* item[+].linkId = "prostate-volume"
* item[=].text = "Prostate volume in cc"
* item[=].type = #quantity
* item[=].required = true
* item[=].repeats = false
* item[=].code = $sct#1297142007

* item[+].linkId = "pirads"
* item[=].text = "PI-RADS score"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].code = $sct#719178004
* item[=].answerOption[+].valueInteger = 1
* item[=].answerOption[+].valueInteger = 2
* item[=].answerOption[+].valueInteger = 3
* item[=].answerOption[+].valueInteger = 4
* item[=].answerOption[+].valueInteger = 5