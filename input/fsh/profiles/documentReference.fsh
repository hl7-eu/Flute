Profile: DocumentReferenceFlute
Parent: DocumentReference
Id: documentReference-eu-flute
Title: "DocumentReference: link with variables"
Description: "This profile described how to link an Image (or other kinds of 'documents' with the associated FLUTE variables."


* masterIdentifier ^short = "Unique Identifier of the Image"
* identifier ^short = "Other identifiers of the Image"
* status ^short = "Status of the reference"
* subject only Reference( Patient )
* content
  * attachment 1..
    * contentType 
      * ^example.label = "DICOM Image example"
      * ^example.valueCode = #application/dicom
    * data 0..0 
      * ^short = "not in line images"
  * format 0..0
* context
  * related only Reference( PR_Biopsy or PR_DigitalRectalExamination or PR_OutcomeBCN_RC2 or PR_PIRADSScore or PR_ProstateCancerFamilyHistory or PR_ProstateSpecificAntigen or PR_ProstateVolume)
// TO be checked