Instance: LabCancellation
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Cancellation Bundle Example"
Description: "HIV Submit Lab Cancellation Bundle Example"
* type = #transaction
* entry[+].fullUrl = "http://hapi-fhir:8080/fhir/Task/HIVLabOrderCancellationTaskExample"
* entry[=].resource = HIVLabOrderCancellationTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderCancellationTaskExample"