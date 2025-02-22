/datum/job/roguetown/tollkeeper
	title = "Tollkeeper"
	flag = TOLKEEPER
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	allowed_sexes = list(MALE, FEMALE)
	allowed_ages = list(AGE_MIDDLEAGED, AGE_OLD)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
	)
	tutorial = "You were not always a leader, but you earned your place through blood and coin.\
	When the last Tollkeeper fell, it was your hand that held the line, your voice that gave the orders.\
	Now, the roads and the bogs are yours to command—every toll paid, every blade drawn, all under your watch.\
	The king trusts you to keep the peace, to keep the gold flowing, and to ensure that those who refuse learn the cost of defiance.\
	No one crosses without paying. No one leaves without permission."
	display_order = JDO_TOLKEEPER
	whitelist_req = FALSE
	bypass_lastclass = TRUE
	selection_color = "#0d6929"
	outfit = /datum/outfit/job/roguetown/tollkeeper
	give_bank_account = 45
	min_pq = 5
	cmode_music = 'sound/music/cmode/garrison/CombatForestGarrison.ogg'

/datum/outfit/job/roguetown/tollkeeper/pre_equip(mob/living/carbon/human/H)
	..()
	cloak = /obj/item/clothing/cloak/raincloak/furcloak
	armor = /obj/item/clothing/suit/roguetown/armor/leather/splint
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/iron
	pants = /obj/item/clothing/under/roguetown/trou/leather
	shoes = /obj/item/clothing/shoes/roguetown/boots/furlinedboots
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	head = /obj/item/clothing/head/roguetown/helmet/kettle/slit
	gloves = /obj/item/clothing/gloves/roguetown/leather
	neck = /obj/item/clothing/neck/roguetown/bevor
	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/rogueweapon/axe/iron
	beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
	backr = /obj/item/rogueweapon/polearm/halberd/bardiche/woodcutter
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/rogueweapon/knife/hunting = 1, /obj/item/rope/chain = 1, /obj/item/key/forrestgarrison = 1, /obj/item/signal_horn = 1)
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/bows, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/labor/lumberjacking, 5, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/tanning, 2, TRUE)
		H.change_stat("strength", 3)
		H.change_stat("perception", 1)
		H.change_stat("intelligence", 3)
		H.change_stat("endurance", 2)
		H.change_stat("speed", 1)
	H.verbs |= /mob/proc/haltyell
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
