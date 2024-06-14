Instance: EXP-S2-ExcludedPatient
InstanceOf: Bundle
Description: "This bundle includes all the resources for a patient who has been excluded from the study."
Usage: #example
* meta.lastUpdated = "2014-08-18T01:43:30Z"
* type = #transaction
* entry[0].fullUrl = "urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a"
* entry[=].resource = EXP-S2-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:8e87d05f-4cbb-42b9-acff-e1020c3bd16e"
* entry[=].resource = EXP-S2-Procedure-Biopsy
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:03efde8c-2f8e-49c5-8c57-597d32711798"
* entry[=].resource = EXP-S2-FamilyMemberHistory-PCa
* entry[=].request.method = #POST
* entry[=].request.url = "FamilyMemberHistory"
* entry[+].fullUrl = "urn:uuid:46a77d44-a285-480c-a108-e5bc4cd170ab"
* entry[=].resource = EXP-S2-Observation-PSA
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:db93456d-e6fe-4eba-8963-273d71e98f1b"
* entry[=].resource = EXP-S2-Procedure-DRE
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:a4af7207-beaf-4fd5-b1e0-dff6fee4d37d"
* entry[=].resource = EXP-S2-Observation-PV
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:636e62ab-db01-4802-aef5-349772ce8d11"
* entry[=].resource = EXP-S2-Observation-PIRADS
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

Instance: EXP-S2-Patient
InstanceOf: Patient
Description: "The Patient excluded in the study S2."
Usage: #example
* active = true
* name.use = #official
* name.family = "Dubois"
* name.given[0] = "Jacque"
* gender = #male
* birthDate = "1974-12-25"

Instance: EXP-S2-Procedure-Biopsy
InstanceOf: PR-Biopsy
Description: "Exemple de procedure biopsy pour le scénario 1"
Usage: #inline
* status = #completed
* category = $sct#884001 "Initial"
* code = $sct#86273004 "Biopsy"
* subject = Reference(urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a)
* performedAge = 54 'a'
* bodySite = $sct#41216001 "Prostatic structure (body structure)"

Instance: EXP-S2-FamilyMemberHistory-PCa
InstanceOf: PR-ProstateCancerFamilyHistory
Usage: #inline
* status = #completed
* patient = Reference(urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a) "Jacque Patient"
* date = "2024-03-18"
* relationship = $v3-RoleCode#FTH "father"
* sex = $administrative-gender#male "Male"
* condition.code = $sct#1259388006 "Primary carcinoma of prostate"

Instance: EXP-S2-Observation-PSA
InstanceOf: PR-ProstateSpecificAntigen
Description: "Exemple d'observation pour la perception de la santé dans le scénario 1"
Usage: #inline
* status = #final
* code = $loinc#2857-1 "Prostate specific Ag"
* subject = Reference(urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a)
* valueQuantity = 1 'ng/mL'
* effectiveDateTime = "2024-06-03"

Instance: EXP-S2-Procedure-DRE
InstanceOf: PR-DigitalRectalExamination
Description: "Exemple de procedure biopsy pour le scénario 1"
Usage: #inline
* status = #completed
* code = $sct#410006001 "digital rectal examination"
* subject = Reference(urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a)
* performedAge = 54 'a'
* bodySite = $sct#41216001 "Prostatic structure (body structure)"
* outcome = $sct#17621005 "Normal"

Instance: EXP-S2-Observation-PV
InstanceOf: PR-ProstateVolume
Description: "Exemple d'observation pour la perception de la santé dans le scénario 1"
Usage: #inline
* status = #final
* code = $sct#1297142007 "Volume of prostate"
* subject = Reference(urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a)
* valueQuantity = 30 'cm3'
* effectiveDateTime = "2024-03-01"
* bodySite = $sct#41216001 "Prostatic structure (body structure)"

Instance: EXP-S2-Observation-PIRADS
InstanceOf: PR-PIRADSScore
Description: "Exemple d'observation pour la perception de la santé dans le scénario 1"
Usage: #inline
* status = #final
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate"
* subject = Reference(urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a)
* valueInteger = 3
* effectiveDateTime = "2024-03-01"