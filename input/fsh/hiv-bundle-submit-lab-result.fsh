Instance: LabResult
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Result Bundle Example"
Description: "HIV Submit Lab Result Bundle Example"
* type = #transaction
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Task/HIVLabResultTaskExample"
* entry[=].resource = HIVLabResultTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabResultTaskExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/DiagnosticReport/HIVLabResultsDiagnosticReportExample"
* entry[=].resource = HIVLabResultsDiagnosticReportExample
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/PractitionerExample"
* entry[=].resource = PractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/PractitionerExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Specimen/VLSpecimenExample"
* entry[=].resource = VLSpecimenExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Specimen/VLSpecimenExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Observation/HIVTestResultExample"
* entry[=].resource = HIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultExample"
