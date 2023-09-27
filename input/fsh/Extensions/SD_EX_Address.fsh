Extension: EX_HLAB_Address_OfficialAddress
Id: ex-hlab-address-official-address
Title: "Official Address"
Description: "Indicate that this address is meant to be the 'official' address for that person."
* ^status = #draft
* ^experimental = false
* ^date = "2023-09-25"
* ^context[0].type = #element
* ^context[=].expression = "Address"
* value[x] only boolean
