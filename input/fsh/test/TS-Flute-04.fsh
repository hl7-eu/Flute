Alias: $testscript-profile-origin-types = http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
Alias: $testscript-profile-destination-types = http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
Alias: $restful-interaction = http://hl7.org/fhir/restful-interaction

Instance: TS-Flute-04
InstanceOf: TestScript
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/flute/TestScript/TS-Flute-04"
* description = "This TestScript is designed to validate the extract of a questionnaire response"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.eu/fhir/ig/flute"
* contact.name = "Flute"
* origin.index = 1
* origin.profile = $testscript-profile-origin-types#FHIR-Client
* destination.index = 1
* destination.profile = $testscript-profile-destination-types#FHIR-Server
* fixture[0].id = "fixture-patient-create"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(EXP-S1-Patient)
* fixture[+].id = "fixture-questionnaireResponse-create"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(Questionnaire-StudyVariable-S1)
* variable.id = "Questionnaire-StudyVariable-S1"
* variable.name = "Questionnaire-StudyVariable-S1"
* variable.path = "id"
* variable.defaultValue = "Questionnaire-StudyVariable-S1"
* test.action[0].operation.extension.url = "http://fyrstain.com/pdt/returnResourceType"
* test.action[=].operation.extension.valueString = "Bundle"
* test.action[=].operation.id = "TES-01"
* test.action[=].operation.type = $restful-interaction#operation
* test.action[=].operation.resource = #QuestionnaireResponse
* test.action[=].operation.origin = 1
* test.action[=].operation.destination = 1
* test.action[=].operation.method = #post
* test.action[=].operation.description = "Extract questionnaire response to FHIR"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "$extract"
* test.action[=].operation.targetId = "Questionnaire-StudyVariable-S1"
* test.action[+].assert.id = "TES-01-ASS-01"
* test.action[=].assert.label = "HTTPStatus"
* test.action[=].assert.description = "Confirmer que le statut HTTP renvoyé est 200."
* test.action[=].assert.direction = #response
* test.action[=].assert.responseCode = "200"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-02"
* test.action[=].assert.label = "Resource"
* test.action[=].assert.description = "Confirmer que le type de ressource renvoyé est Bundle."
* test.action[=].assert.direction = #response
* test.action[=].assert.resource = #Bundle
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-03"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Bundle contains the resource Procedure."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Bundle.entry[0].resource.is(Procedure)"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-04"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Bundle contains the resource FamilyMemberHistory."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Bundle.entry[1].resource.is(FamilyMemberHistory)"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-05"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Bundle contains the resource Observation."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Bundle.entry[2].resource.is(Observation)"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-06"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Bundle contains the resource Procedure."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Bundle.entry[3].resource.is(Procedure)"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-07"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Bundle contains the resource Observation."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Bundle.entry[4].resource.is(Observation)"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-08"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Bundle contains the resource Observation."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Bundle.entry[5].resource.is(Observation)"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-09"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Bundle contains 6 entries."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Bundle.entry.count() = 6"
* test.action[=].assert.warningOnly = false
* test.id = "01-ExtractQuestionnaireResponse"
* test.name = "Extract questionnaire response to FHIR"
* test.description = "Extract questionnaire response to FHIR"
* version = "1.0"
* name = "TestScriptExtractQuestionnaireResponse"
* title = "This TestScript is designed to validate the extract of a questionnaire response"
* status = #draft
* experimental = true
* date = "2024-05-31"
* publisher = "Flute"
* purpose = "This TestScript is designed to validate the extract of a questionnaire response"