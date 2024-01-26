Instance: EMR
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit EMR Bundle Example"
Description: "HIV Submit EMR Bundle Example"
* type = #transaction

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIVPatientExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Encounter/TransferringFacilityEncounterExample"
* entry[=].resource = TransferringFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TransferringFacilityEncounterExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Condition/HIVDiagnosisExample"
* entry[=].resource = HIVDiagnosisExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/HIVDiagnosisExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/DateHIVTestDoneExample"
* entry[=].resource = DateHIVTestDoneExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/DateHIVTestDoneExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/EpisodeOfCare/HIVEpisodeOfCareExample"
* entry[=].resource = HIVEpisodeOfCareExample
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/HIVEpisodeOfCareExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/CarePlan/ARVTreatmentRegimenSwitchedOrSubstitutedExample"
* entry[=].resource = ARVTreatmentRegimenSwitchedOrSubstitutedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/ARVTreatmentRegimenSwitchedOrSubstitutedExample"