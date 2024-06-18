Alias: $testscript-profile-origin-types = http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
Alias: $testscript-profile-destination-types = http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
Alias: $restful-interaction = http://hl7.org/fhir/restful-interaction

Instance: TS-Flute-01
InstanceOf: TestScript
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/flute/TestScript/TS-Flute-01"
* version = "1.0.0"
* name = "PcaInclusionCriteriaS01"
* title = "Study Inclusion Criteria - Scenario 01"
* status = #draft
* experimental = true
* description = "This TestScript evaluates the inclusion criteria for patients participating in the study."
* purpose = "To verify that the CQL library correctly identifies patients who meet the inclusion criteria for the study."
* origin.index = 1
* origin.profile = $testscript-profile-origin-types#FHIR-Client
* destination.index = 1
* destination.profile = $testscript-profile-destination-types#FHIR-Server
* fixture[0].id = "fixture-transaction-request"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(DocumentReference/EXP-S1-IncludedPatient)
* fixture[+].id = "fixture-transaction-teardown"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(DocumentReference/EXP-Teardown)
* fixture[+].id = "fixture-valueset-create"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(DocumentReference/VS-PCa)
* fixture[+].id = "fixture-library-create"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource = Reference(DocumentReference/PcaInclusionCriteria)
* variable[0].id = "patientId"
* variable[=].name = "patientId"
* variable[=].expression = "Bundle.entry[0].response.location"
* variable[=].sourceId = "fixture-transaction-response"
* variable[+].id = "obsPIRADSId"
* variable[=].name = "obsPIRADSId"
* variable[=].expression = "Bundle.entry[6].response.location"
* variable[=].sourceId = "fixture-transaction-response"
* variable[+].id = "obsPVId"
* variable[=].name = "obsPVId"
* variable[=].expression = "Bundle.entry[5].response.location"
* variable[=].sourceId = "fixture-transaction-response"
* variable[+].id = "proDREId"
* variable[=].name = "proDREId"
* variable[=].expression = "Bundle.entry[4].response.location"
* variable[=].sourceId = "fixture-transaction-response"
* variable[+].id = "obsPSAId"
* variable[=].name = "obsPSAId"
* variable[=].expression = "Bundle.entry[3].response.location"
* variable[=].sourceId = "fixture-transaction-response"
* variable[+].id = "famPCId"
* variable[=].name = "famPCId"
* variable[=].expression = "Bundle.entry[2].response.location"
* variable[=].sourceId = "fixture-transaction-response"
* variable[+].id = "proBiopsyId"
* variable[=].name = "proBiopsyId"
* variable[=].expression = "Bundle.entry[1].response.location"
* variable[=].sourceId = "fixture-transaction-response"
* setup.action[0].operation.id = "SET-01"
* setup.action[=].operation.type = $restful-interaction#transaction
* setup.action[=].operation.resource = #Bundle
* setup.action[=].operation.description = "Sent a transaction request on the test server using the id from fixture-transaction-request."
* setup.action[=].operation.accept = #application/fhir+json
* setup.action[=].operation.contentType = #application/fhir+json
* setup.action[=].operation.encodeRequestUrl = false
* setup.action[=].operation.method = #post
* setup.action[=].operation.responseId = "fixture-transaction-response"
* setup.action[=].operation.sourceId = "fixture-transaction-request"
* setup.action[+].assert.id = "SET-01-ASS-01"
* setup.action[=].assert.label = "HTTPStatus"
* setup.action[=].assert.description = "Confirm that the returned HTTP status is 200."
* setup.action[=].assert.direction = #response
* setup.action[=].assert.responseCode = "200"
* setup.action[=].assert.warningOnly = false
* setup.action[+].operation.id = "SET-02"
* setup.action[=].operation.type = $restful-interaction#update
* setup.action[=].operation.resource = #ValueSet
* setup.action[=].operation.description = "Create the ValueSet resource on the test server using the id from fixture-valueset-create."
* setup.action[=].operation.accept = #application/fhir+json
* setup.action[=].operation.contentType = #application/fhir+json
* setup.action[=].operation.encodeRequestUrl = false
* setup.action[=].operation.method = #put
* setup.action[=].operation.sourceId = "fixture-valueset-create"
* setup.action[+].assert.id = "SET-02-ASS-01"
* setup.action[=].assert.label = "HTTPStatus"
* setup.action[=].assert.description = "Confirm that the returned HTTP status is 201."
* setup.action[=].assert.direction = #response
* setup.action[=].assert.responseCode = "201"
* setup.action[=].assert.warningOnly = false
* setup.action[+].operation.id = "SET-03"
* setup.action[=].operation.type = $restful-interaction#update
* setup.action[=].operation.resource = #Library
* setup.action[=].operation.description = "Create the Library resource on the test server using the id from fixture-library-create."
* setup.action[=].operation.accept = #application/fhir+json
* setup.action[=].operation.contentType = #application/fhir+json
* setup.action[=].operation.encodeRequestUrl = false
* setup.action[=].operation.method = #put
* setup.action[=].operation.sourceId = "fixture-library-create"
* setup.action[+].assert.id = "SET-03-ASS-01"
* setup.action[=].assert.label = "HTTPStatus"
* setup.action[=].assert.description = "Confirm that the returned HTTP status is 201."
* setup.action[=].assert.direction = #response
* setup.action[=].assert.responseCode = "201"
* setup.action[=].assert.warningOnly = false
* test.id = "1-EvaluateLibrary"
* test.name = "Evaluation of CQL Library for Prostate Cancer Inclusion"
* test.description = "This test evaluates the inclusion criteria defined in the CQL library for a prostate cancer study."
* test.action[0].operation.id = "TES-01"
* test.action[=].operation.extension.url = "http://fyrstain.com/pdt/returnResourceType"
* test.action[=].operation.extension.valueString = "Parameters"
* test.action[=].operation.type = $restful-interaction#operation
* test.action[=].operation.resource = #Library
* test.action[=].operation.description = "Evaluate the CQL library to check if the patient meets the inclusion criteria."
* test.action[=].operation.contentType = #application/fhir+json
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.method = #get
* test.action[=].operation.params = "$evaluate?subject={{patientId}}"
* test.action[=].operation.targetId = "fixture-library-create"
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
* test.action[=].assert.description = "Confirm that the returned Parameters resource contains an 'isIncluded' parameter with a value of true."
* test.action[=].assert.direction = #response
* test.action[=].assert.expression = "Parameters.parameter.where(name = 'isIncluded' ).value=true"
* test.action[=].assert.warningOnly = false
* teardown.action[0].operation.id = "TED-01"
* teardown.action[=].operation.type = $restful-interaction#transaction
* teardown.action[=].operation.resource = #Bundle
* teardown.action[=].operation.description = "Delete the testing resources on the test server using the id from fixture-transaction-teardown."
* teardown.action[=].operation.encodeRequestUrl = true
* teardown.action[=].operation.method = #delete
* teardown.action[=].operation.sourceId = "fixture-transaction-teardown"
* teardown.action[+].operation.id = "TED-02"
* teardown.action[=].operation.type = $restful-interaction#delete
* teardown.action[=].operation.resource = #ValueSet
* teardown.action[=].operation.description = "Delete the ValueSet resource on the test server using the id from fixture-library-create."
* teardown.action[=].operation.encodeRequestUrl = true
* teardown.action[=].operation.method = #delete
* teardown.action[=].operation.targetId = "fixture-valueset-create"
* teardown.action[+].operation.id = "TED-03"
* teardown.action[=].operation.type = $restful-interaction#delete
* teardown.action[=].operation.resource = #Library
* teardown.action[=].operation.description = "Delete the Library resource on the test server using the id from fixture-library-create."
* teardown.action[=].operation.encodeRequestUrl = true
* teardown.action[=].operation.method = #delete
* teardown.action[=].operation.targetId = "fixture-library-create"