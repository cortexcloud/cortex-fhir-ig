// CodeSystem: CS_HLAB_Module_Name
// Id: cs-hlab-module-name
// Title: "ตัวอย่าง code system"
// Description: "คำอธิบาย value set ดังกล่าว"
// * ^url = $CS_HLAB_Module_Name
// * ^caseSensitive = false
// * #001 "Code 1"
Alias: $SD_SharableCS = http://hl7.org/fhir/StructureDefinition/shareablecodesystem

Alias: $CS_HLAB_ContactPoint_AdditionalSystem = https://fhir.cortex.app/core/CodeSystem/cs-hlab-contact-point-additional-system

CodeSystem: CS_HLAB_ContactPoint_AdditionalSystem
Id: cs-hlab-contact-point-additional-system
Title: "Additional ContactPoint system code system"
Description: "Additional ContactPoint system code system"
* ^caseSensitive = false
* ^meta.profile = $SD_SharableCS
* ^experimental = false
* ^caseSensitive = false
* #line "LINE ID"