Profile: HIVPatient
Parent: Patient
Id: hiv-patient
Title: "Patient"
Description: "A patient resource for an HIV Patient"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    NID 0..1 and
    MR 1..1
* identifier[NID].value 0..1 MS
* identifier[NID].system = "http://openhie.org/fhir/training-solution-1/identifier/nid" (exactly)
* identifier[MR].value 1..1
* identifier[MR].system = "http://openhie.org/fhir/training-solution-1/identifier/mr" (exactly)
* identifier[MR].type.coding.code = #MR
* identifier[MR].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[MR].type.coding.display = "Medical record number"
* identifier[MR].type.text = "Patient folder number"
* name.given 1..*
* name.family 1..1
* telecom 0..* MS
* gender 1..1
* birthDate 1..1
* address 0..* MS
* address.city 1..1
* address.line 1..*
* address.district 1..1
* address.state 1..1
* address.country 1..1
* contact 0..* MS
* contact.address 0..0
* contact.name.given 1..*
* contact.name.family 1..1
* contact.telecom 0..* MS
* contact.relationship 1..1
* maritalStatus 1..1 
* managingOrganization 1..1
* extension contains KeyPopulationStatus named KPS 1..1

Extension: KeyPopulationStatus
Id: key-population-status
Title: "Key HIV Population"
Description: "Populations who are at higher risk for HIV."
* value[x] only CodeableConcept
* valueCodeableConcept from VSKeyPopulationSatus (required)
* valueCodeableConcept.text = "HIV key population"
* valueCodeableConcept.coding.display 1..1
* ^context[0].type = #element
* ^context[0].expression = "Patient"

Profile: HIVOrganization
Parent: Organization
Id: hiv-organization
Title: "HIV Organization"
Description: "Organization providing HIV Testing Services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 1..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/training-solution-1/identifier/hiv-organization" (exactly)
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.coding.display = "Organization identifier"
* identifier[XX].type.text = "HIV Organization identifier"
* address 1..1
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* address.line 1..*
* name 1..1

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Target Facility Encounter" 
Description: "This profile represents the current facility at which the patient is receiving treatment."
* status 1..1
* class 1..1
* subject 1..1
* period 1..1
* partOf 0..1 MS
* episodeOfCare 1..*

Profile: ARVTreatment
Parent: CarePlan
Id: hiv-arv-treatment
Title: "ARV Treatment"
Description: "This profile is to record prescribed ARV regimen against a given therapeutic line."
* status 1..1
* intent 1..1
* subject 1..1
* encounter 1..1
* period 1..1
* activity 1..* 
* activity.outcomeCodeableConcept 0..* MS
* activity.outcomeCodeableConcept from VSCarePlanActivityOutcome (required)
* activity.outcomeCodeableConcept.text = "Interruptions in treatment"
* activity.detail 0..1 MS
* activity.detail.scheduledPeriod 0..1 MS
* activity.detail.kind 0..1 MS
* activity.detail.kind = #MedicationRequest
* activity.detail.code 0..1 MS
* activity.detail.code from VSARVMedicationRequest (required)
* activity.detail.code.text = "ARV medication request"
* activity.detail.status 1..1
* activity.detail.productCodeableConcept 0..1 MS
* activity.detail.productCodeableConcept from VSARVRegimen (required)
* activity.detail.productCodeableConcept.text = "ARV Regimen"
* activity.detail.extension contains ARTRegimenSwitchedOrSubstituted named artRegimenSwitchedOrSubstituted 0..1 MS
* activity.detail.extension contains ARTRegimenLine named artRegimenLine 0..1 MS
* activity.detail.extension contains HIVCareNextAppointment named next-visit 0..1 MS
* note 0..* MS

Extension: HIVCareNextAppointment
Id: hiv-care-next-visit
Title: "Next Appointment Date"
Description: "A date representing the patient's next scheduled appointment."
* value[x] only dateTime
* ^context[0].type = #element
* ^context[0].expression = "CarePlan.activity.detail"

Extension: ARTRegimenLine
Id: art-regimen-line
Title: "ART Regimen Line"
Description: "Therapeutic lines that are used to classify the patient's currently prescribed ARV regimen."
* value[x] only CodeableConcept
* valueCodeableConcept from VSARTRegimenLines (required)
* valueCodeableConcept.text = "ART therapeutic line"
* valueCodeableConcept.coding.display 1..1
* ^context[0].type = #element
* ^context[0].expression = "CarePlan.activity.detail"

Extension: ARTRegimenSwitchedOrSubstituted
Id: art-regimen-switched-or-substituted
Title: "ART Regimen Switched Or Substituted"
Description: "The ARV regimen has been switched to a new ARV regimen or has been substituted by another ARV regimen."
* value[x] only CodeableConcept
* valueCodeableConcept from VSARTRegimenChangeType (required)
* valueCodeableConcept.text = "ARV regimen change"
* valueCodeableConcept.coding.display 1..1
* ^context[0].type = #element
* ^context[0].expression = "CarePlan.activity.detail"

Profile: TransferringFacilityEncounter
Parent: Encounter
Id: transferring-facility-encounter
Title: "Transferring Facility Encounter" 
Description: "This profile represents the facility the patient is being transferred from."
* status 1..1
* class 1..1
* serviceProvider 1..1

Profile: HIVEpisodeOfCare
Parent: EpisodeOfCare
Id: hiv-episode-of-care
Title: "Patient Enrollment Type"
Description: "This profile is used to enrol the patient into HIV care."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PI 1..1
* identifier[PI].value 1..1
* identifier[PI].system = "http://openhie.org/fhir/training-solution-1/identifier/enrollment-unique-id" (exactly)
* identifier[PI].type.coding.code = #PI
* identifier[PI].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PI].type.coding.display = "Patient internal identifier"
* identifier[PI].type.text = "Enrollment identifier"
* status 1..1
* diagnosis 1..* 
* diagnosis.condition 1..1 
* patient 1..1
* managingOrganization 1..1
* period 1..1 

Profile: HIVDiagnosis
Parent: Condition
Id: hiv-diagnosis
Title: "Diagnosis"
Description: "This profile represents the confirmation of HIV diagnosis."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PI 1..1
* identifier[PI].value 1..1
* identifier[PI].system = "http://openhie.org/fhir/training-solution-1/identifier/hiv-diagnosis" (exactly)
* identifier[PI].type.coding.code = #PI
* identifier[PI].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PI].type.coding.display = "Patient internal identifier"
* identifier[PI].type.text = "HIV positive testing identifier"
* code 1..1
* code from VSCondition (required)
* code.text = "Diagnosis"
* subject 1..1
* encounter 1..1
* recordedDate 1..1
* note 0..* MS

Profile: VLSpecimen
Parent: Specimen
Id: viral-load-specimen
Title: "Viral Load Specimen"
Description: "The test sample that was collected for the initiated lab order."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    USID 1..1
* identifier[USID].value 1..1
* identifier[USID].system = "http://openhie.org/fhir/training-solution-1/identifier/specimen-id" (exactly)
* identifier[USID].type.coding.code = #USID
* identifier[USID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[USID].type.coding.display = "Unique Specimen ID"
* identifier[USID].type.text = "Specimen identifier"
* type 1..1
* type from VSSpecimenType (required)
* type.text = "Specimen Type"
* subject 1..1
* collection.collectedDateTime 1..1
* note 0..* MS

Profile: HIVServiceRequestLocation
Parent: Organization
Id: hiv-service-request-location
Title: "Lab Order Request Location"
Description: "What is the location of the organization responsible for conducting the examination of the individual's sample?"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 1..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/training-solution-1/identifier/hiv-service-request-location" (exactly)
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.coding.display = "Organization identifier"
* identifier[XX].type.text = "HIV Organization identifier"
* address 1..1
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* name 1..1

Profile: HIVServiceRequest
Parent: ServiceRequest
Id: HIV-lab-order
Title: "Lab Order"
Description: "A service request that initiates the need for the lab to collect the test sample."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    PLAC 1..1 
* identifier[PLAC].value 1..1
* identifier[PLAC].system = "http://openhie.org/fhir/training-solution-1/identifier/lab-order-identifier" (exactly)
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PLAC].type.coding.display = "Placer Identifier"
* identifier[PLAC].type.text = "HIV lab service request identifier"
* status 1..1
* intent = #order
* code 1..1
* code from VSTestTypes (required)
* code.text = "Test Type"
* subject 1..1
* encounter 1..1
* occurrenceDateTime 1..1
* requester 1..1
* performer 1..*
* reasonCode 1..*
* reasonCode from VSReasonForAssessment (required)
* reasonCode.text = "Reason"
* specimen 1..1
* note 0..* MS

Profile: HIVTestResult
Parent: Observation
Id: hiv-test-results
Title: "Lab Results"
Description: "The result of the lab test which determines whether the patient is infected with HIV or not."
* status = #final
* code from VSVLResultCode (required)
* code.text = "Viral Load Result"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueInteger 1..1
* interpretation 1..1
* interpretation from VSVLSuppression (required)
* interpretation.text = "Viral Load Suppression Status"
* performer 1..*
* note 0..* MS

Profile: HIVPractitioner
Parent: Practitioner
Id: hiv-practitioner
Title: "Practitioner"
Description: "The healthcare professional who has been assigned to a given lab task."
* name 1..1
* name.given 1..*
* name.family 1..1
* telecom 1..*
* telecom.system.value = #phone

Profile: HIVLabTask
Parent: Task
Id: hiv-lab-task
Title: "Lab Task"
Description: "Assists with tracking the state of the lab order and its completion status."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    FILL 1..1
* identifier[FILL].value 1..1
* identifier[FILL].system = "http://openhie.org/fhir/training-solution-1/lab-integration/order-id" (exactly)
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[FILL].type.coding.display = "Filler Identifier"
* identifier[FILL].type.text = "Lab order number"
* basedOn only Reference(ServiceRequest)
* status 1..1
* statusReason from VSReasonForSampleCancellationOrRejection
* statusReason.text = "Reason For Canceling/Rejecting the Lab Order"
* intent = #order
* executionPeriod 1..1
* lastModified 0..1 MS
* requester 0..1 MS
* owner 0..1 MS
* note 0..* MS
* output 0..* MS
* output.type.coding.code from VSVLResultCode (required)
* output.type.text = "Viral Load Result"
* output.valueReference 1..1

Profile: HIVDiagnosticReport
Parent: DiagnosticReport
Id: hiv-diagnostic-report
Title: "Diagnostic Report"
Description: "A report as a result of the lab task being completed."
* basedOn only Reference(ServiceRequest)
* status = #final
* code from VSTestTypes (required)
* code.text = "Test Type"
* subject 1..1
* encounter 1..1
* performer 1..*
* result 1..1
* conclusion 0..1 MS

Profile: DateHIVTestDone
Parent: Observation
Id: date-hiv-test-done
Title: "Date HIV Test Done"
Description: "This profile is to record the date when HIV test was done for a patient."
* status = #final
* code from VSHIVTestDone (required)
* code.text = "Viral Load Examination"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* note 0..* MS