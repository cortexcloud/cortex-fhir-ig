// ValueSet: VS_HLAB_Module_Name
// Id: vs-hlab-module-name
// Title: "ตัวอย่าง value set"
// Description: "คำอธิบาย value set ดังกล่าว"
// * ^url = $VS_HLAB_Module_Name
// * $CS_HLAB_Module_Name#001 "Code 1"

Alias: $SD_SharableVS = http://hl7.org/fhir/StructureDefinition/shareablevalueset

Alias: $VS_HLAB_ContactPoint_AdditionalSystem = https://fhir.cortex.app/core/ValueSet/cs-hlab-contact-point-additional-system

ValueSet: VS_HLAB_ContactPoint_AdditionalSystem
Id: vs-hlab-contact-point-additional-system
Title: "Additional ContactPoint system value set"
Description: "Additional ContactPoint system value set"
* ^meta.profile = $SD_SharableVS
* ^experimental = false
* include codes from system CS_HLAB_ContactPoint_AdditionalSystem