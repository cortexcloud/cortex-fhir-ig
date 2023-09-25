Profile: HlabPatientOPD
Parent: Patient
Id: hlab-patient-base
Title: "H LAB Patient: Base"
Description: "Base profile สำหรับ H LAB Patient"
* ^status = #draft
* ^publisher = "H LAB Counsulting"
// Patient.extension: religion
// Patient.extension: citizenship
// Patient.extension: race
// Patient.extension: education
// * extension contains
//     $SD_EX_Encounter_Extension named extensionDemo 0..1 MS
// * extension[extensionDemo] ^short = "ตัวอย่างการใส่ extension"
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
  cid 1..1
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
  * type 1.. MS
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#cid
  * system 1.. MS
  * system = $ID_ThaiCid
  * value 1.. MS
* name 1.. MS
  * family 1.. MS
  * given 1.. MS
  * prefix 1.. MS
* telecom MS
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[=].path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    phone 1.. MS and
    email 0..* MS and
    line 0..* MS
* telecom[phone] ^short = "เบอร์โทรศัพท์"
  * system 1.. MS
  * system = #phone
  * value 1.. MS
* telecom[email] ^short = "อีเมล"
  * system 1.. MS
  * system = #email
  * value 1.. MS
* telecom[line] ^short = "LINE ID"
  * system 1.. MS
  * system = #other
  * value 1.. MS
  * extension contains
    EX_HLAB_ContactPoint_AdditionalSystem named additionalSystem 0..1 MS
  * extension[additionalSystem].value[x] = #line
* gender MS
* birthDate MS
* address MS
  * city MS
  * district MS
  * state MS
  * postalCode MS
* photo MS
* contact MS
* communication MS
  * language MS
  * preferred MS
  * preferred = true
