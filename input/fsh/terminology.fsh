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

ValueSet: VSReasonForAssessmentOrTestNotPerformed
Id: vs-reason-for-assessment-or-test-not-performed
Title: "Reason for Assessment or Test Not Performed"
Description: "A list of reasons associated with the service request for the lab order."
* ^experimental = false
//Reasons for assessment
* $SCT#77386006 "Pregnancy"
* $SCT#428450006 "Repeat laboratory specimen sent"
* $SCT#171111007 "Screened - no result yet"
* $SCT#266721009 "Absent response to treatment"
* $SCT#170564007 "Chronic disease - treatment changed"
* $SCT#413712001 "Breastfeeding (mother)"
* $SCT#315124004 "Human immunodeficiency virus viral load"
* $SCT#2528003 "Viremia"
//Reasons test not performed
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

ValueSet: VSReasonForSampleCancellationOrRejection
Id: vs-reason-sample-cancelled-or-rejected
Title: "Reasons why a lab order was cancelled or rejected"
Description: "Reasons why a lab order was cancelled or rejected."
* ^experimental = false
* $SCT#281264009 "Inappropriate bottle or container for sample"
* $SCT#281266006 "No sample received"
* $SCT#135839007 "Sample rejected"

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