Profile: HlabCoverage
Parent: Coverage
Id: hlab-coverage
Title: "H LAB Coverage"
Description: "สิทธิการรักษาและประกันสุขภาพของผู้ป่วย"
* ^status = #draft
* status MS
* kind MS
  * ^short = "ชนิดของสิทธิการรักษา เลือกจาก insurance | self-pay | other (เป็น element บังคับของ FHIR)"
* type MS
  * ^short = "ประเภทของสิทธิการรักษา"
* type from VS_TH_CoverageType (preferred)
* subscriber MS
  * ^short = "ผู้เอาประกัน, เจ้าของสิทธิ"
* subscriber only Reference(HlabPatient)
* subscriberId MS
  * ^short = "หมายเลขประจำตัวผู้เอาประกัน/เจ้าของสิทธิ"
* beneficiary MS
  * ^short = "ผู้รับผลประโยชน์"
* beneficiary only Reference(HlabPatient)
* relationship MS
  * ^short = "ความสัมพันธ์ระหว่างผู้เอาประกันและผู้รับผลประโยชน์"
* period MS
  * ^short = "ระยะเวลาที่สิทธิการรักษานี้ครอบคลุม"
* insurer MS
  * ^short = "ผู้รับประกัน บริษัทประกัน กองทุนภาครัฐ"
* class MS
  * ^short = "การแบ่งประเภทของสิทธิการรักษาเพิ่มเติม"
* class ^slicing.discriminator[0].type = #value
* class ^slicing.discriminator[=].path = "type"
* class ^slicing.rules = #open
* class contains
    plan 1.. MS
* class[plan] ^short = "ประเภทสิทธิ์ย่อย"
  * type MS 
    * ^short = "ระบุประเภทเป็น plan"
  * type = $CS_HL7_CoverageClass#plan
  * value MS
    * ^short = "รหัสระบุ plan"
    * system MS
    * value MS