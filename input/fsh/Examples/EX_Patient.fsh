Instance: patient-patient1
InstanceOf: HlabPatient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 1 ชายไทย"
Description: "ตัวอย่าง Patient resource ที่สร้างตาม profile H LAB Patient"
Usage: #example
* extension[nationality].extension
  * url = #code
  * valueCodeableConcept = urn:iso:std:iso:3166#THA "Thailand"
* extension[religion].valueCodeableConcept = $SCT#33822009 "Buddhism"
* extension[education].valueCodeableConcept = $CS_INT_ISCED1997#61 "ปริญญาตรี"
* identifier[cid]
  * type = $CS_TH_IdentifierType#cid
  * system = $ID_ThaiCid
  * value = "1234567890121"
* identifier[hn]
  * type = $CS_TH_IdentifierType#localHn
  * system = $ID_LO_HN
  * value = "000000001"
* name
  * prefix = "นาย"
  * family = "จันทร์อังคาร"
  * given[0] = "ประหยัด"
* telecom[phone]
  * system = #phone
  * value = "081234567"
* telecom[email]
  * system = #email
  * value = "prayadza@hotmail.com"
* telecom[line]
  * system = #other
  * extension[additionalSystem].valueCode = #line
  * value = "prayad-luvyouall"
* gender = #male
* birthDate = "1945-01-31"
* address[official]
  * extension[official].valueBoolean = true
  * use = #home
  * line = "2565 ซอยสวัสดิการ"
  * city = "เกาะหลัก"
  * district = "เมือง"
  * state = "ประจวบคีรีขันธ์"
* address[home]
  * use = #home
  * line = "2565 ซอยสวัสดิการ"
  * city = "เกาะหลัก"
  * district = "เมือง"
  * state = "ประจวบคีรีขันธ์"
* photo
  * url = "https://cortex.com/patient/avatar.png"
* contact[emergency]
  * relationship[emergency] = $CS_HL7_ContactRole#C "Emergency Contact"
  * relationship[relationship] = $SCT#66839005 "Father"
  * name
    * prefix = "นาย"
    * family = "จันทร์อังคาร"
    * given[0] = "สมประโยชน์"
  * telecom[phone] 
    * system = #phone
    * value = "081234568"
* communication[preferred]
  * language
    * coding = $Languages#th-TH "Thai"
  * preferred = true
