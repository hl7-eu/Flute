Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type

Instance: ResearchVariables
InstanceOf: Library
Description: "Retrieves key research variables for prostate cancer studies."
Usage: #definition
// // * url =  "http://hl7.eu/fhir/ig/flute/Library/ResearchVariables"
// * version = "1.0.0"
* name = "ResearchVariables"
* title = "Prostate Cancer Research Variables"
* status = #draft
* type = $library-type#logic-library
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient
* content.id = "ig-loader-ResearchVariables.cql"