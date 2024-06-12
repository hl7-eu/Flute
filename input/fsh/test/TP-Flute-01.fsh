Alias: $testscript-scope-phase-codes = http://hl7.org/fhir/testscript-scope-phase-codes
Alias: $test-script-languages = http://example.com/test-script-languages

Instance: TP-Flute-01
InstanceOf: TestPlan
Usage: #definition
* url = "https://flute.com/TestPlan/TP-Flute-01"
* title = "TestPlan for the populate of a questionnaire and extract of a questionnaireResponse"
* description = "TestPlan for the populate of a questionnaire and extract of a questionnaireResponse for the study variable"
* contact.telecom.system = #url
* contact.telecom.value = "https://flute.com"
* category = $testscript-scope-phase-codes#unit
* scope[0] = Reference(TestScript/TS-Flute-03)
* scope[+] = Reference(TestScript/TS-Flute-04)
* testCase.testRun[0].script.language = $test-script-languages#fhir-testscript
* testCase.testRun[=].script.sourceReference = Reference(TestScript/TS-Flute-03)
* testCase.testRun[=].narrative = "Test case to populate a questionnaire"
* testCase.testRun[+].script.language = $test-script-languages#fhir-testscript
* testCase.testRun[=].script.sourceReference = Reference(TestScript/TS-Flute-04)
* testCase.testRun[=].narrative = "Test case to extract a questionnaire response"
* testCase.sequence = 1
* name = "TPPopulateExtract"
* status = #active
* experimental = true
* date = "2024-06-04"
* publisher = "Flute"
* purpose = "TestPlan for the populate of a questionnaire and extract of a questionnaireResponse for the study variable"
* testTools = "The following tool will be used for testing test requirements"
* exitCriteria = "The test plan is considered successful if all test cases pass without errors."