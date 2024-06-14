library ResearchVariables version '1.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers

codesystem "LOINC": 'http://loinc.org' 

codesystem "SNOMED": 'http://snomed.info/sct'

code "psA": '2857-1' from "LOINC" display 'Prostate specific Ag'
code "drE": '410006001' from "SNOMED" display 'Digital examination of rectum'
code "susceptible": '131196009' from "SNOMED" display 'susceptible'
code "biopsy": '86273004' from "SNOMED" display 'Biopsy'
code "volumeOfProstate": '1297142007' from "SNOMED" display 'Volume of prostate'
code "mri": '719178004' from "SNOMED" display 'Multiparametric magnetic resonance imaging of prostate'
code "repeated": '27582007' from "SNOMED" display 'Repeated'

valueset "pca": 'https://flute.com/ValueSet/VS-PCa'

context Patient

define "ageAtBiopsy":
    [Procedure: "biopsy"] P where P.status = 'completed'
    return P.performed 

define "pcaFamilyHistory":
    if exists([FamilyMemberHistory] F where F.status = 'completed' and F.condition[0].code in "pca") then 1
    else 0

define "typeOfBiopsy":
    if exists([Procedure: "biopsy"] P where P.status = 'completed' and P.category ~ "repeated") then 2
    else 0

define "psa": 
    [Observation:"psA"] O where O.status = 'final'
    return O.value

define "dre":
    if exists([Procedure: "drE"] P  where P.status = 'completed' and  P.outcome ~ "susceptible") then 1
    else 0

define "prostateVolume":
    [Observation:"volumeOfProstate"] O where O.status = 'final'
    return O.value

define "pirads":
    [Observation:"mri"] O where O.status = 'final'
    return O.value



