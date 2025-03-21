/datum/advclass/pilgrim/physician
	name = "Physician"
	tutorial =  "Those who fail their studies, or are exiled from the towns they take \
				residence as feldshers in, often end up becoming wandering physicians. \
				Capable doctors nonetheless, they journey from place to place offering \
				their services."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Rakshari",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiberian",
		"Dark Elf",
		"Anakim",
		"Half-Orc"
	)
	outfit = /datum/outfit/job/roguetown/adventurer/physician
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)
	maximum_possible_slots = 2
	apprentice_name = "Physician Apprentice"

/datum/outfit/job/roguetown/adventurer/physician/pre_equip(mob/living/carbon/human/H)
	..()
	mask = /obj/item/clothing/mask/rogue/phys
	if(prob(50))
		head = /obj/item/clothing/head/roguetown/roguehood/phys
	else
		head = /obj/item/clothing/head/roguetown/physhat
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	backr = /obj/item/storage/backpack/rogue/satchel
	pants = /obj/item/clothing/under/roguetown/tights/random
	gloves = /obj/item/clothing/gloves/roguetown/leather/phys
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/phys
	neck = /obj/item/clothing/neck/roguetown/phys
	r_hand = /obj/item/storage/backpack/rogue/satchel/surgbag
	beltl = /obj/item/key/clinic

	H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/alchemy, 1, TRUE)
	if(H.age == AGE_OLD)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
	H.change_stat("intelligence", 2)
	H.change_stat("speed", 1)
	ADD_TRAIT(H, TRAIT_EMPATH, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
	H?.mind?.AddSpell(new /obj/effect/proc_holder/spell/invoked/diagnose/secular)
