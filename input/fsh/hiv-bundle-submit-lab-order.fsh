Instance: LabOrder
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Order Bundle Example"
Description: "HIV Submit Lab Order Bundle Example"
* type = #transaction
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Task/HIVLabOrderTaskExample"
* entry[=].resource = HIVLabOrderTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderTaskExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Organization/HIVServiceRequestLocationExample"
* entry[=].resource = HIVServiceRequestLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/HIVServiceRequestLocationExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/ServiceRequest/HIVServiceRequestExample"
* entry[=].resource = HIVServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/HIVServiceRequestExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Practitioner/PractitionerExample"
* entry[=].resource = PractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/PractitionerExample"

* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Specimen/VLSpecimenExample"
* entry[=].resource = VLSpecimenExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Specimen/VLSpecimenExample"