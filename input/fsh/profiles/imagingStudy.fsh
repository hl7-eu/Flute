Profile: ImagingStudyFlute
Parent: ImagingStudy
Id: imagingStudy-eu-flute
Title: "ImagingStudy: link with variables"
Description: "This profile described how to link an Imaging Study with the associated FLUTE variables."

* extension contains ResourceSupportingInfo named supporting-info 0..*
* extension[supporting-info].valueReference only Reference( PR_Biopsy or PR_DigitalRectalExamination or PR_OutcomeBCN_RC2 or PR_PIRADSScore or PR_ProstateCancerFamilyHistory or PR_ProstateSpecificAntigen or PR_ProstateVolume)
// TO be checked

* identifier ^short = "Identifiers for the study"
* status ^short = "State of the Study"
* modality ^short = "Study modalities"
* subject ^short = "Study subject"
* series  ^short = "Study series"
  * uid  ^short = "DICOM Series Instance UID"
  * instance ^short = "DICOM Instance"
    * uid ^short = "DICOM SOP Instance UID"
    * sopClass ^short = "DICOM SOP Class"