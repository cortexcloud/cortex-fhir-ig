Instance: coverage-patient1
InstanceOf: HlabCoverage
Title: "ตัวอย่าง Coverage: ผู้ป่วยรายที่ 1 ชายไทย"
Description: "ตัวอย่าง Coverage resource ที่สร้างตาม profile H LAB Coverage"
Usage: #example
* status = #active
* kind = #insurance
* type = CS_TH_CoverageType#UCS "ประกันสุขภาพถ้วนหน้า"
* subscriber = Reference(patient-patient1)
* beneficiary = Reference(patient-patient1)
* period
  * start = "2013-01-20"
  * end = "2028-09-18"
* class[plan]
  * type = $CS_HL7_CoverageClass#plan
  * value
    * system = $ID_HLAB_CoveragePlan
    * value = "8A646B38-58DD-4429-AFDD-530EFF8F3BE6"
  * name = "ประกันสุขภาพถ้วนหน้าสำหรับ OPD/IPD"