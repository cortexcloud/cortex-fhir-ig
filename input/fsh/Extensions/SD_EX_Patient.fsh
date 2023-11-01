
Extension: EX_HLAB_PatientRace
Id: ex-hlab-patient-race
Title: "Patient: Race"
Description: "เชื้อชาติของบุคคล"
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* value[x] from $VS_ISO3166 (extensible)


Extension: EX_HLAB_PatientEducation
Id: ex-hlab-patient-education
Title: "Patient: Education"
Description: "ระดับการศึกษาของบุคคล"
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* value[x] from $VS_INT_ISCED1997 (extensible)
