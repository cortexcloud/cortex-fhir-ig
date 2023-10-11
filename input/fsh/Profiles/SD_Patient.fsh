Profile: HlabPatient
Parent: Patient
Id: hlab-patient
Title: "H LAB Patient"
Description: "ผู้ป่วย/ผู้รับบริการสุขภาพ"
* ^status = #draft
// Patient.extension: education
* extension contains
    $EX_HL7_Religion named religion 0.. MS and
    $EX_HL7_Nationality named nationality 0.. MS and
    EX_HLAB_PatientRace named race 0.. MS and
    EX_HLAB_PatientEducation named education 0.. MS
* extension[religion] ^short = "ศาสนา"
* extension[religion].valueCodeableConcept from VS_SCT_Religion (extensible)
* extension[nationality] ^short = "สัญชาติ"
* extension[nationality].extension.valueCodeableConcept from $VS_ISO3166 (extensible)
* extension[race] ^short = "เชื้อชาติ"
* extension[education] ^short = "การศึกษา"
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
  cid 1..1 and
  hn 1..
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
  * type 1.. MS
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#cid
  * system 1.. MS
  * system = $ID_ThaiCid
  * value 1.. MS
* identifier[hn] ^short = "เลขประจำตัวผู้ป่วย (HN)"
  * type from $VS_TH_IdentifierType (extensible)
  * type = $CS_TH_IdentifierType#localHn
  * system 1.. MS
  * system obeys HN-uri
  * system ^example.label = "HN system URL"
  * system ^example.valueUri = $ID_LO_HN
  * value 1..
  * value ^example.label = "เลขประจำตัวผู้ป่วย (HN)"
  * value ^example.valueString = "123456"
* name 1.. MS
  * family 1.. MS
  * given 1.. MS
  * prefix 1.. MS
* telecom MS
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "system"
  * ^slicing.rules = #open
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
  * extension contains
    $EX_HL7_DataAbsentReason named dataAbsentReason 0..1
  * extension[dataAbsentReason] ^short = "กรณีไม่ทราบวันเดือนที่เกิด เช่น ทราบเฉพาะปี"
* address MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "extension(https://fhir.cortexcloud.co/core/StructureDefinition/ex-hlab-address-official-address).value"
  * ^slicing.rules = #open
* address contains
  official 1.. and
  home 0..
* address[official] ^short = "ที่อยู่ตามบัตรประชาชน"
  * extension contains
    EX_HLAB_Address_OfficialAddress named official 1..1 MS
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
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "relationship"
  * ^slicing.rules = #open
* contact contains
  emergency 1..
* contact[emergency] ^short = "การติดต่อกรณีฉุกเฉิน"
  * relationship
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "coding"
    * ^slicing.rules = #open
  * relationship contains
    emergency 1.. MS and
    relationship 1.. MS
  * relationship[emergency] ^short = "ใช้ระบุว่าเป็น emergency contact"
  * relationship[emergency] = $CS_HL7_ContactRole#C "Emergency Contact"
  * relationship[relationship] ^short = "ใช้ระบุความสัมพันธ์"
  * relationship[relationship] from VS_SCT_Person (extensible)
  * name 1.. MS
  * telecom
    * ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.rules = #open
  * telecom contains
      phone 1.. MS
  * telecom[phone] ^short = "เบอร์โทรศัพท์"
    * system 1.. MS
    * system = #phone
    * value 1.. MS
* communication MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "preferred"
  * ^slicing.rules = #open
* communication contains
  preferred 1.. MS
* communication[preferred]
  * language MS
  * preferred MS
  * preferred = true
