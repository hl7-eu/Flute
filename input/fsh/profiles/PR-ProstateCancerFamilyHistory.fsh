Alias: $sct = http://snomed.info/sct

Profile: PR_ProstateCancerFamilyHistory
Parent: FamilyMemberHistory
Id: PR-ProstateCancerFamilyHistory
Title: "FamilyMemberHistory: prostate cancer family history"
Description: "A record detailing a patient's family history of prostate cancer."
* condition 1..
* condition.code.coding from VS-PCa
* relationship.coding from $v3-FamilyMember