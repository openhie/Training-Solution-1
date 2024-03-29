Instance: LabRejection
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Rejection Bundle Example"
Description: "HIV Submit Lab Rejection Bundle Example"
* type = #transaction
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Task/HIVLabOrderRejectionTaskExample"
* entry[=].resource = HIVLabOrderRejectionTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderRejectionTaskExample"