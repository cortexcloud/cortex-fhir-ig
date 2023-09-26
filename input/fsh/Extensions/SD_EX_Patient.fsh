
Extension: EX_HLAB_PatientRace
Id: ex-halb-patient-race
Title: "Patient: Race"
Description: "เชื้อชาติของบุคคล"
* ^status = #active
* ^experimental = false
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* value[x] from $VS_ISO3166 (extensible)
