Alias: $sct = http://snomed.info/sct

Profile: CancerProstateFamilyHistory
Parent: FamilyMemberHistory
Id: PcaFmilyHistory
Title: "FamilyMemberHistory: prostate cancer family history"
Description: "A record detailing a patient's family history of prostate cancer."
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Flute Project"
* ^contact[0].name = "Flute Project"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://flute.eu/"
* ^contact[+].name = "Flute Project"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://flute.eu/"
* ^jurisdiction.coding.system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction.coding.code = #150
* ^jurisdiction.coding.display = "Europe"
* condition.code = $sct#399068003 "Carcinoma of prostate"