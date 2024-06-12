Alias: $loinc = http://loinc.org
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $sct = http://snomed.info/sct

Instance: EXP-S1-IncludedPatient
InstanceOf: Bundle
Description: "This bundle includes all the resources for a patient who has been included in the study."
Usage: #example
* meta.lastUpdated = "2014-08-18T01:43:30Z"
* type = #transaction
* entry[0].fullUrl = "urn:uuid:8a80b7e2-1879-418e-92eb-3641846b599c"
* entry[=].resource = EXP-S1-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:08e6398c-85fa-4d32-97ef-3d7aa9969bb8"
* entry[=].resource = EXP-S1-Procedure-Biopsy
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:37e5a7b3-4434-4b76-812a-fdeeb72fdf3e"
* entry[=].resource = EXP-S1-FamilyMemberHistory-PCa
* entry[=].request.method = #POST
* entry[=].request.url = "FamilyMemberHistory"
* entry[+].fullUrl = "urn:uuid:e1d949ac-b412-4299-8030-f5dca3f7c654"
* entry[=].resource = EXP-S1-Observation-PSA
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:1dc2c73b-b8e2-4651-896d-d6e0f98d5784"
* entry[=].resource = EXP-S1-Procedure-DRE
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:477424f5-1919-46b4-8ae8-e13fe96f469a"
* entry[=].resource = EXP-S1-Observation-PV
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:80488242-2f56-4c3d-b55e-281bca3ac04e"
* entry[=].resource = EXP-S1-Observation-PIRADS
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

Instance: EXP-S1-Patient
InstanceOf: Patient
Description: "The Patient included in the study S1."
Usage: #example
* active = true
* name.use = #official
* name.family = "Dubois"
* name.given[0] = "Peter"
* gender = #male
* birthDate = "1974-12-25"

Instance: EXP-S1-Procedure-Biopsy
InstanceOf: PR-Biopsy
Usage: #inline
* status = #completed
* category = $sct#27582007 "Repeated"
* code = $sct#86273004 "Biopsy"
* subject = Reference(urn:uuid:8a80b7e2-1879-418e-92eb-3641846b599c)
* performedAge = 54 'a'
* bodySite = $sct#41216001 "Prostatic structure (body structure)"


Instance: EXP-S1-FamilyMemberHistory-PCa
InstanceOf: PR-ProstateCancerFamilyHistory
Usage: #inline
* status = #completed
* patient = Reference(urn:uuid:8a80b7e2-1879-418e-92eb-3641846b599c) "Peter Patient"
* date = "2024-03-18"
* relationship = $v3-RoleCode#FTH "father"
* sex = $administrative-gender#male "Male"
* condition.code = $sct#1259388006 "Primary carcinoma of prostate"

Instance: EXP-S1-Observation-PSA
InstanceOf: PR-ProstateSpecificAntigen
Usage: #inline
* status = #final
* code = $loinc#2857-1 "Prostate specific Ag"
* subject = Reference(urn:uuid:8a80b7e2-1879-418e-92eb-3641846b599c)
* valueQuantity = 5 'ng/mL'
* effectiveDateTime = "2024-06-03"
* bodySite = $sct#41216001 "Prostatic structure (body structure)"

Instance: EXP-S1-Procedure-DRE
InstanceOf: PR-DigitalRectalExamination
Usage: #inline
* status = #completed
* code = $sct#410006001 "digital rectal examination"
* subject = Reference(urn:uuid:8a80b7e2-1879-418e-92eb-3641846b599c)
* performedAge = 54 'a'
* outcome = $sct#131196009 "susceptible"
* bodySite = $sct#41216001 "Prostatic structure (body structure)"

Instance: EXP-S1-Observation-PV
InstanceOf: PR-ProstateVolume
Usage: #inline
* status = #final
* code = $sct#1297142007 "Volume of prostate"
* subject = Reference(urn:uuid:8a80b7e2-1879-418e-92eb-3641846b599c)
* valueQuantity = 30 'cm3'
* effectiveDateTime = "2024-03-01"
* bodySite = $sct#41216001 "Prostatic structure (body structure)"

Instance: EXP-S1-Observation-PIRADS
InstanceOf: PR-PIRADSScore
Usage: #inline
* status = #final
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate"
* subject = Reference(urn:uuid:8a80b7e2-1879-418e-92eb-3641846b599c)
* valueInteger = 3
* effectiveDateTime = "2024-03-01"