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
* gender 1.. MS
* birthDate MS
* address MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "extension(https://fhir.cortex.app/core/StructureDefinition/ex-hlab-address-official-address).value"
* address ^slicing.rules = #open
* address contains
  official 1.. and
  home 1..
* address[official] ^short = "ที่อยู่ตามบัตรประชาชน"
  * extension contains
    EX_HLAB_Address_OfficialAddress named official 1.. MS
  * extension[official].value[x] = true
  * use 1..
  * use = #home
  * city 1.. MS
  * district 1.. MS
  * state 1.. MS
  * postalCode MS
* address[home] ^short = "ที่อยู่ติดต่อได้"
  * use 1..
  * use = #home
  * city 1.. MS
  * district 1.. MS
  * state 1.. MS
  * postalCode MS
* photo MS
* contact MS
* contact ^slicing.discriminator.type = #value
* contact ^slicing.discriminator.path = "relationship"
* contact ^slicing.rules = #open
* contact contains
  emergency 1..
* contact[emergency] ^short = "การติดต่อกรณีฉุกเฉิน"
  * relationship ^slicing.discriminator.type = #value
  * relationship ^slicing.discriminator.path = "coding"
  * relationship ^slicing.rules = #open
  * relationship contains
    emergency 1.. MS and
    relationship 1.. MS
  * relationship[emergency] ^short = "ใช้ระบุว่าเป็น emergency contact"
  * relationship[emergency] = $CS_HL7_ContactRole#C "Emergency Contact"
  * relationship[relationship] ^short = "ใช้ระบุความสัมพันธ์"
  * relationship[relationship] from $VS_SCT_Person (extensible)
  * name 1.. MS
  * telecom
  * telecom ^slicing.discriminator[0].type = #value
  * telecom ^slicing.discriminator[=].path = "system"
  * telecom ^slicing.rules = #open
  * telecom contains
      phone 1.. MS
  * telecom[phone] ^short = "เบอร์โทรศัพท์"
    * system 1.. MS
    * system = #phone
    * value 1.. MS
* communication MS
* communication ^slicing.discriminator.type = #value
* communication ^slicing.discriminator.path = "preferred"
* communication ^slicing.rules = #open
* communication contains
  preferred 1.. MS
* communication[preferred]
  * language MS
  * preferred MS
  * preferred = true
