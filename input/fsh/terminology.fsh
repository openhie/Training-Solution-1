Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct 

ValueSet: VSSpecimenType
Id: vs-specimen-type
Title: "Specimen Type Used In Viral Load testing"
Description:  "A list of specimen types."
* ^experimental = false
* $SCT#119361006 "Plasma specimen"
* $SCT#440500007 "Dried blood spot specimen"
* $SCT#441620008 "Oral fluid specimen"
* $SCT#258580003 "Whole blood specimen"
* $SCT#119364003 "Serum specimen"

ValueSet: VSTestTypes
Id: vs-test-types
Title: "Test Types"
Description: "A list of HIV test types"
* ^experimental = false
* $LNC#25842-6 "HIV 2 proviral DNA [Presence] in Specimen by NAA with probe detection"   
* $LNC#25836-8 "HIV 1 RNA [#/volume] (viral load) in Specimen by NAA with probe detection"

ValueSet: VSReasonForAssessment
Id: vs-reason-for-assessment
Title: "Reason for Assessment or Test Not Performed"
Description: "A list of reasons associated with the service request for the lab order."
* ^experimental = false
* $SCT#77386006 "Pregnancy"
* $SCT#428450006 "Repeat laboratory specimen sent"
* $SCT#171111007 "Screened - no result yet"
* $SCT#266721009 "Absent response to treatment"
* $SCT#170564007 "Chronic disease - treatment changed"
* $SCT#413712001 "Breastfeeding (mother)"
* $SCT#315124004 "Human immunodeficiency virus viral load"
* $SCT#2528003 "Viremia"

ValueSet: VSReasonForSampleCancellationOrRejection
Id: vs-reason-sample-cancelled-or-rejected
Title: "Reasons why a lab order was cancelled or rejected"
Description: "Reasons why a lab order was cancelled or rejected."
* ^experimental = false
* $SCT#441510007 "Blood specimen with anticoagulant" 
* $SCT#123840003 "Sample contaminated"
* $SCT#397933008 "Equipment error/failure"
* $SCT#281264009 "Inappropriate bottle or container for sample"
* $SCT#281268007 "Insufficient sample"
* $SCT#281265005 "Sample incorrectly labeled"
* $SCT#419182006 "Supplies not available"

ValueSet: VSVLResultCode
Id: vs-vl-result-code
Title: "Viral Load Result Code"
Description: "A code used to indicate the category for the lab result."
* ^experimental = false
* $SCT#398579006 "Human immunodeficiency virus-1 nucleic acid assay"

ValueSet: VSVLSuppression
Id: vs-vl-suppression
Title: "Viral Load Suppressions Status"
Description: "Describes a patient's current viral load status."
* ^experimental = false
* $SCT#245780008 "Suppressed"
* $SCT#19032002 "Uncontrolled" //Unsuppressed
* $SCT#261665006 "Unknown"

CodeSystem: CSKeyPopulationStatus
Id: cs-key-population-status
Title: "Key Population Status"
Description: "A list of key population types"
* ^experimental = false
* ^caseSensitive = true
* #General-Population "General Population"

ValueSet: VSKeyPopulationSatus
Id: vs-key-population-status
Title: "Key Population Status"
Description: "A list of key population types"
* ^experimental = false
* $SCT#472986005 "Sexually active with men"
* $SCT#159799000 "Female prostitute"
* $SCT#159800001 "Male prostitute"
* $SCT#228388006 "Intravenous drug user"
* $SCT#417284009 "Current drug user"
* $SCT#407375002 "Surgically transgendered transsexual"
* include codes from system CSKeyPopulationStatus

ValueSet: VSCondition
Id: vs-condition
Title: "Conditions"
Description:  "A list of possible HIV conditions."
* ^experimental = false
* $SCT#86406008 "Human immunodeficiency virus infection"

ValueSet: VSHIVTestDone
Id: vs-hiv-test-done
Title: "HIV Test Done"
Description:  "Used by the observation to indicate that a HIV test was performed."
* ^experimental = false
* $SCT#315124004 "Human immunodeficiency virus viral load"

ValueSet: VSCarePlanActivityOutcome
Id: vs-careplan-outcome
Title: "ARV treatment outcomes"
Description: "A list of possible ARV treatment outcomes."
* ^experimental = false
* $SCT#737038009 "Declined consent for treatment"
* $SCT#386473003 "Telephone follow-up"

ValueSet: VSARVMedicationRequest
Id: vs-arvtreatment-activity-type
Title: "ARV Treatment Medication Request"
Description: "Codes used to represent a medication request for ART."
* ^experimental = false
*  $LNC#45260-7 "HIV ART medication"

ValueSet: VSARVRegimen
Id: vs-arv-regimen
Title: "A list of ARV regimen"
Description: "A list of ARV regimen."
* ^experimental = false
* $SCT#387105006 "Didanosine"
* $SCT#387005008 "Abacavir"
* $SCT#772188001 "Product containing only abacavir and lamivudine"
* $SCT#427314002 "Antiviral therapy"
* $SCT#878898002 "Product containing only atazanavir and ritonavir"
* $SCT#713464000 "Dolutegravir"
* $SCT#387001004 "Efavirenz"
* $SCT#404856006 "Emtricitabine"
* $SCT#432121008 "Etravirine"
* $SCT#386897000 "Lamivudine"
* $SCT#776569000 "Product containing only lopinavir and ritonavir"
* $SCT#386898005 "Nevirapine"
* $SCT#429707008 "Raltegravir"
* $SCT#703123005 "Rilpivirine"
* $SCT#386896009 "Ritonavir"
* $SCT#386895008 "Stavudine"
* $SCT#422091007 "Tenofovir"
* $SCT#421203005 "Tenofovir disoproxil"
* $SCT#414090006 "Product containing emtricitabine and tenofovir"
* $SCT#387151007 "Zidovudine"
* $SCT#776469003 "Product containing only lamivudine and zidovudine"

ValueSet: VSARTRegimenLines
Id: vs-artregimen-lines
Title: "ART Regimen Lines"
Description: "A list of ART regimen therapeutic lines."
* ^experimental = false
* $SCT#708255002 "First line treatment"
* $SCT#708256001 "Second line treatment"
* $SCT#708257005 "Third line treatment"

CodeSystem: CSARTRegimenChangeType
Id: cs-art-regimen-change-type
Title: "ART Regimen Change Types"
Description: "A list of options to determine whether an ARV regimen was switched or substituted."
* ^experimental = false
* ^caseSensitive = true
* #Switched "ARV Regimen Switched"
* #Substituted "ARV Regimen Substituted"

ValueSet: VSARTRegimenChangeType
Id: vs-art-regimen-change-type
Title: "ART Regimen Change Types"
Description: "A list of options to determine whether an ARV regimen was switched or substituted."
* ^experimental = false
* include codes from system CSARTRegimenChangeType