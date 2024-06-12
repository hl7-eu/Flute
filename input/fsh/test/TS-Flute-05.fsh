Alias: $testscript-profile-origin-types = http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
Alias: $testscript-profile-destination-types = http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
Alias: $restful-interaction = http://hl7.org/fhir/restful-interaction

Instance: TS-Flute-05
InstanceOf: TestScript
Usage: #definition
* url = "https://flute.com/TestScript/TS-Flute-05"
* description = "This TestScript is designed to validate the cql library ResearchVariables2 with an extract of a questionnaire response"
* contact.telecom.system = #url
* contact.telecom.value = "https://flute.com"
* contact.name = "Flute"
* origin.index = 1
* origin.profile = $testscript-profile-origin-types#FHIR-Client
* destination.index = 1
* destination.profile = $testscript-profile-destination-types#FHIR-Server
* fixture[0].id = "fixture-paramsBundle-create"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(DocumentReference/EXP-Params-BundleExtract)
* fixture[+].id = "fixture-library-create"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(DocumentReference/ResearchVariables2)
* setup.action[0].operation.id = "SET-01"
* setup.action[=].operation.type = $restful-interaction#update
* setup.action[=].operation.resource = #Library
* setup.action[=].operation.description = "Create the Library resource on the test server using the id from fixture-library-create."
* setup.action[=].operation.accept = #application/fhir+json
* setup.action[=].operation.contentType = #application/fhir+json
* setup.action[=].operation.encodeRequestUrl = false
* setup.action[=].operation.method = #put
* setup.action[=].operation.sourceId = "fixture-library-create"
* setup.action[+].assert.id = "SET-01-ASS-01"
* setup.action[=].assert.label = "HTTPStatus"
* setup.action[=].assert.description = "Confirm that the returned HTTP status is 201."
* setup.action[=].assert.direction = #response
* setup.action[=].assert.responseCode = "201"
* setup.action[=].assert.warningOnly = false
* test.action[0].operation.extension.url = "http://fyrstain.com/pdt/returnResourceType"
* test.action[=].operation.extension.valueString = "Parameters"
* test.action[=].operation.id = "TES-01"
* test.action[=].operation.type = $restful-interaction#operation
* test.action[=].operation.resource = #Library
* test.action[=].operation.description = "Evaluate the CQL library to retrieve research variables."
* test.action[=].operation.contentType = #application/fhir+json
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.method = #post
* test.action[=].operation.params = "$evaluate"
* test.action[=].operation.targetId = "fixture-library-create"
* test.action[=].operation.sourceId = "fixture-paramsBundle-create"
* test.action[+].assert.id = "TES-01-ASS-01"
* test.action[=].assert.label = "HTTPStatus"
* test.action[=].assert.description = "Confirm that the returned HTTP status is 200."
* test.action[=].assert.direction = #response
* test.action[=].assert.responseCode = "200"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-02"
* test.action[=].assert.label = "Resource"
* test.action[=].assert.description = "Confirm that the returned resource type is Parameters."
* test.action[=].assert.direction = #response
* test.action[=].assert.resource = #Parameters
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-03"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Parameters resource contains an 'dre' parameter with a value of 1."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Parameters.parameter.where(name = 'dre' ).value=1"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-04"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Parameters resource contains an 'pcaFamilyHistory' parameter with a value of 0."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Parameters.parameter.where(name = 'pcaFamilyHistory' ).value=0"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-05"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Parameters resource contains an 'pirads' parameter with a value of 3."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Parameters.parameter.where(name = 'pirads' ).value=3"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-06"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Parameters resource contains an 'prostateVolume' parameter with a value of 30."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Parameters.parameter.where(name = 'prostateVolume' ).value.value=30"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-07"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Parameters resource contains an 'psa' parameter with a value of 5."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Parameters.parameter.where(name = 'psa' ).value.value=5"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.id = "TES-01-ASS-08"
* test.action[=].assert.label = "FHIRPath"
* test.action[=].assert.description = "Confirm that the returned Parameters resource contains an 'typeOfBiopsy' parameter with a value of 2."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Parameters.parameter.where(name = 'typeOfBiopsy' ).value=2"
* test.action[=].assert.warningOnly = false
* test.id = "1-EvaluateLibrary"
* test.name = "Evaluation of CQL Library for Research Variables 2"
* test.description = "This test evaluates the research variables defined in the CQL library for a prostate cancer study."
* teardown.action.operation.id = "TED-01"
* teardown.action.operation.type = $restful-interaction#delete
* teardown.action.operation.resource = #Library
* teardown.action.operation.description = "Delete the Library resource on the test server using the id from fixture-library-create."
* teardown.action.operation.encodeRequestUrl = true
* teardown.action.operation.method = #delete
* teardown.action.operation.targetId = "fixture-library-create"
* version = "1.0"
* name = "TestScriptResearchVariables2Extract"
* title = "This TestScript is designed to validate the cql library ResearchVariables2"
* status = #draft
* experimental = true
* date = "2024-06-12"
* publisher = "Flute"
* purpose = "This TestScript is designed to validate the cql library ResearchVariables2 with an extract of a questionnaire response"