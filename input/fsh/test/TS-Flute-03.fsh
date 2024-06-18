Alias: $testscript-profile-origin-types = http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
Alias: $testscript-profile-destination-types = http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
Alias: $restful-interaction = http://hl7.org/fhir/restful-interaction

Instance: TS-Flute-03
InstanceOf: TestScript
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/flute/TestScript/TS-Flute-03"
* description = "This TestScript is designed to validate the populate of a questionnaire"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.eu/fhir/ig/flute"
* contact.name = "Flute"
* origin.index = 1
* origin.profile = $testscript-profile-origin-types#FHIR-Client
* destination.index = 1
* destination.profile = $testscript-profile-destination-types#FHIR-Server
* fixture.id = "fixture-questionnaire-create"
* fixture.autocreate = false
* fixture.autodelete = false
* fixture.resource = Reference(DocumentReference/EXP-DR-Questionnaire-StudyVariable)
* test.action[0].operation.extension.url = "http://fyrstain.com/pdt/returnResourceType"
* test.action[=].operation.extension.valueString = "QuestionnaireResponse"
* test.action[=].operation.id = "TES-01"
* test.action[=].operation.type = $restful-interaction#operation
* test.action[=].operation.resource = #Questionnaire
* test.action[=].operation.origin = 1
* test.action[=].operation.destination = 1
* test.action[=].operation.method = #post
* test.action[=].operation.description = "Populate of questionnaire"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "$populate"
* test.action[=].operation.sourceId = "fixture-questionnaire-create"
* test.action[+].assert.id = "TES-01-ASS-01"
* test.action[=].assert.label = "HTTPStatus"
* test.action[=].assert.description = "Confirm that the returned HTTP status is 200."
* test.action[=].assert.direction = #response
* test.action[=].assert.responseCode = "200"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-02"
* test.action[=].assert.label = "Resource"
* test.action[=].assert.description = "Confirm that the returned resource type is QuestionnaireResponse."
* test.action[=].assert.direction = #response
* test.action[=].assert.resource = #QuestionnaireResponse
* test.action[=].assert.warningOnly = false
* test.id = "01-PopulateQuestionnaire"
* test.name = "Populate questionnaire"
* test.description = "Populate questionnaire Study Variable"
* version = "1.0"
* name = "TestScriptPopulateQuestionnaire"
* title = "This TestScript is designed to validate the populate of a questionnaire"
* status = #draft
* experimental = true
* date = "2024-05-31"
* publisher = "Flute"
* purpose = "This TestScript is designed to validate the populate of a questionnaire"