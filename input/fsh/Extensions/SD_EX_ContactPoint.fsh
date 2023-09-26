Extension: EX_HLAB_ContactPoint_AdditionalSystem
Id: ex-hlab-contact-point-additional-system
Title: "ContactPoint additional system"
Description: "To specify additional contact point system"
* ^status = #draft
* ^experimental = false
* ^date = "2023-09-25"
* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "ExtendedContactDetail"
* . 0..1
* value[x] only code
* value[x] from VS_HLAB_ContactPoint_AdditionalSystem (extensible)