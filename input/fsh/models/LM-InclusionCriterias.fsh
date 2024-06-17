Logical: InclusionCriterias
Id: inclusionCriterias
Title: "Inclusion Criteria for Prostate Cancer Cohorts"
Description: "Criteria for including men in cohorts based on clinical suspicion of prostate cancer."
* psa 0..1 Quantity "Level of prostate-specific antigen. The measurement of PSA levels in the blood, typically reported in ng/ml."
* dre 0..1 integer "Results of digital rectal examination. Indicates the findings of the DRE (0: normal, 1: suspicious)."


Mapping: InclusionCriteriasToFHIR
Id: InclusionCriteriasToFHIR
Title: "Prostate Cancer Study Variables to FHIR R4 Profiles"
Source: InclusionCriterias
Target: "http://hl7.org/fhir/r4"
* -> "FHIR R4"
* psa -> "Observation.where(code = 'http://loinc.org|2857-1').value"
* dre -> "Procedure.where(code = 'http://snomed.info/sct|410006001').outcome"
