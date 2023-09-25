Alias: $SD_SharableVS = http://hl7.org/fhir/StructureDefinition/shareablevalueset

Alias: $VS_HLAB_ContactPoint_AdditionalSystem = https://fhir.cortex.app/core/ValueSet/cs-hlab-contact-point-additional-system
Alias: $VS_SCT_Person = https://fhir.cortex.app/core/ValueSet/vs-sct-person

ValueSet: VS_HLAB_ContactPoint_AdditionalSystem
Id: vs-hlab-contact-point-additional-system
Title: "Additional ContactPoint system value set"
Description: "Additional ContactPoint system value set"
* ^meta.profile = $SD_SharableVS
* ^experimental = false
* include codes from system CS_HLAB_ContactPoint_AdditionalSystem

ValueSet: VS_SCT_Person
Id: vs-sct-person
Title: "SNOMED CT Person codes"
Description: "SNOMED CT Person codes"
* ^meta.profile = $SD_SharableVS
* ^experimental = false
* ^copyright = "This resource includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/get-snomed-ct or info@snomed.org"
* include codes from system SNOMED_CT_INT where concept is-a #125676002
