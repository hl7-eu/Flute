Alias: $launchContext = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: Questionnaire-StudyVariable
InstanceOf: sdc-questionnaire-extr-defn
Usage: #definition
* url = "https://flute.com/fhir/Questionnaire/Questionnaire-StudyVariable"
* version = "1.0.0"
* name = "StudyVariableExtraction"
* title = "Study variable Extraction"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2024-03-26"
* description = "Study variable extractable questionnaire"
* jurisdiction = $m49.htm#001 "World"

* item[+].linkId = "procedure-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure"
* item[=].type = #group
* item[=].required = false

* item[=].item[+].linkId = "type-of-biopsy"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.category.coding"
* item[=].item[=].text = "Type of biopsy"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = "https://flute.com/fhir/ValueSet/VS-BiopsyType"

* item[=].item[+].linkId = "procedure-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.status"
* item[=].item[=].text = "Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].code = $sct#86273004
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = http://hl7.org/fhir/event-status#completed

* item[=].item[+].linkId = "age-at-biopsy"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.performed"
* item[=].item[=].text = "Age at biopsy"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#86273004

* item[=].item[+].linkId = "biopsy"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.code.coding"
* item[=].item[=].text = "Biopsy"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = $sct#86273004 "Biopsy"

* item[=].item[+].linkId = "biopsy-bodySite"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-Biopsy#Procedure.bodySite.coding"
* item[=].item[=].code = $sct#86273004
* item[=].item[=].text = "Biopsy bodySite"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].initial.valueCoding = $sct#41216001 "Prostatic structure (body structure)"

* item[+].linkId = "family-history-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory"
* item[=].type = #group
* item[=].required = false

* item[=].item[+].linkId = "family-history-pca"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.condition.code.coding"
* item[=].item[=].text = "Family history of prostate cancer"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#399068003

* item[=].item[+].linkId = "family-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.status"
* item[=].item[=].text = "Family Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#399068003
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = http://hl7.org/fhir/history-status#completed

* item[=].item[+].linkId = "family-relationship"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateCancerFamilyHistory#FamilyMemberHistory.relationship.coding"
* item[=].item[=].text = "Family relationship"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#399068003
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FAMMEMB

* item[+].linkId = "observation-psa-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation"
* item[=].type = #group
* item[=].text = "Observation PSA group"
* item[=].required = false

* item[=].item[+].linkId = "psa"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation.value"
* item[=].item[=].text = "Measure of prostate-specific antigen reported in ng/ml" 
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#2857-1

* item[=].item[+].linkId = "psa-code"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation.code.coding"
* item[=].item[=].text = "PSA code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = $loinc#2857-1 "Prostate specific Ag"

* item[=].item[+].linkId = "psa-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateSpecificAntigen#Observation.status"
* item[=].item[=].text = "PSA Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $loinc#2857-1
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = http://hl7.org/fhir/observation-status#final

* item[+].linkId = "procedure-dre-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure"
* item[=].type = #group
* item[=].text = "Procedure DRE group"
* item[=].required = false

* item[=].item[+].linkId = "dre"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.outcome.coding"
* item[=].item[=].text = "Results of digital rectal examination"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#410006001
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = "https://flute.com/fhir/ValueSet/VS-DREOutcomeCode"

* item[=].item[+].linkId = "dre-code"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.code.coding"
* item[=].item[=].text = "DRE code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = $sct#410006001 "digital rectal examination"

* item[=].item[+].linkId = "dre-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.status"
* item[=].item[=].text = "DRE Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#410006001
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = http://hl7.org/fhir/event-status#completed

* item[=].item[+].linkId = "dre-bodySite"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-DigitalRectalExamination#Procedure.bodySite.coding"
* item[=].item[=].text = "DRE bodySite"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = $sct#41216001 "Prostatic structure (body structure)"

* item[+].linkId = "observation-prostate-volume-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation"
* item[=].type = #group
* item[=].text = "Observation Prostate Volume group"
* item[=].required = false

* item[=].item[+].linkId = "prostate-volume"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.value"
* item[=].item[=].text = "Prostate volume in cc"
* item[=].item[=].type = #quantity
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#1297142007
* item[=].item[=].code = $sct#41216001

* item[=].item[+].linkId = "prostate-code"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.code.coding"
* item[=].item[=].text = "Prostate volume code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = $sct#1297142007 "Volume of prostate"

* item[=].item[+].linkId = "prostate-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.status"
* item[=].item[=].text = "Prostate volume Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#1297142007
* item[=].item[=].code = $sct#41216001
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = http://hl7.org/fhir/observation-status#final

* item[=].item[+].linkId = "prostate-bodySite"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-ProstateVolume#Observation.bodySite.coding"
* item[=].item[=].text = "Prostate volume bodySite" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = $sct#41216001 "Prostatic structure (body structure)"

* item[+].linkId = "observation-pirads-group"
* item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation"
* item[=].type = #group
* item[=].text = "Observation PI-RADS group"
* item[=].required = false

* item[=].item[+].linkId = "pirads"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation.value"
* item[=].item[=].text = "PI-RADS score"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#719178004
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5

* item[=].item[+].linkId = "pirads-code"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation.code.coding"
* item[=].item[=].text = "PI-RADS code" 
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate"

* item[=].item[+].linkId = "pirads-status"
* item[=].item[=].definition = "https://flute.com/StructureDefinition/PR-PIRADSScore#Observation.status"
* item[=].item[=].text = "PI-RADS Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].code = $sct#719178004
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = http://hl7.org/fhir/observation-status#final