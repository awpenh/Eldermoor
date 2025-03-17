/datum/job/roguetown/gatekeeper
	title = "Gate Keep"
	flag = GUARDSMAN
	department_flag = GARRISON
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_sexes = list(MALE)
	allowed_races = list(
		"Humen",
		"Half-Elf",
		"Dwarf",
		"Anakim"
	)
	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD, AGE_IMMORTAL)
	tutorial = "You were an aspiring soldier, but incompetence landed you here—stuck manning the gate between the inner and outer city. Now, your days are spent dealing with farmers, butchers, and old men who barely acknowledge your existence. Disrespected and forgotten, this is your fate."
	display_order = JDO_GATEKEEP
	whitelist_req = FALSE
	bypass_lastclass = TRUE

	outfit = /datum/outfit/job/roguetown/gatekeeper
	give_bank_account = 7
	min_pq = 0

	cmode_music = 'sound/music/cmode/garrison/CombatGarrison.ogg'

/datum/outfit/job/roguetown/gatekeeper/pre_equip(mob/living/carbon/human/H)
	..()
	pants = pick(/obj/item/clothing/under/roguetown/tights/guard, /obj/item/clothing/under/roguetown/tights/guardsecond)
	cloak = /obj/item/clothing/cloak/stabard/guard
	shirt = pick(/obj/item/clothing/suit/roguetown/shirt/undershirt/guard, /obj/item/clothing/suit/roguetown/shirt/undershirt/guardsecond)
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	beltl = /obj/item/storage/keyring/gatekeeper
	belt = /obj/item/storage/belt/rogue/leather
	gloves = /obj/item/clothing/gloves/roguetown/leather
	beltr = /obj/item/rogueweapon/sword/iron
	backr = /obj/item/storage/backpack/rogue/satchel
	head = pick(/obj/item/clothing/head/roguetown/roguehood/guard, /obj/item/clothing/head/roguetown/roguehood/guardsecond)

	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE) // Main weapon
		H.mind?.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE) // Main off-hand weapon
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE) // Backup
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
	H.verbs |= /mob/proc/haltyell
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_GENERIC)
