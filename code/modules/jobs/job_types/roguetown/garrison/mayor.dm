/datum/job/roguetown/mayor
	title = "Old Woodsman"
	flag = MAYOR
	department_flag = GARRISON
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	spells = list(/obj/effect/proc_holder/spell/self/convertrole/town_militia)
	allowed_sexes = list(MALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Anakim"
	)
	allowed_ages = list(AGE_OLD, AGE_IMMORTAL)
	tutorial = "The crown may rule on paper, but the folk of Eldermoor know whose word truly carries weight. Like it or not, they come seeking your wisdom—though you'd much rather be left alone with your axe and your peace. From your porch, you grumble at foolhardy adventurers and meddlesome troublemakers, warning them not to stir up problems they can't fix. Not every issue needs a fight, but if one does, well... you've split tougher things than firewood."
	whitelist_req = FALSE
	bypass_lastclass = TRUE
	outfit = /datum/outfit/job/roguetown/mayor
	display_order = JDO_CHIEF
	give_bank_account = 80
	min_pq = 0

	cmode_music = 'sound/music/cmode/towner/CombatMayor.ogg'
	can_have_apprentices = FALSE

/datum/outfit/job/roguetown/mayor
	name = "Old Woodsman"
	jobtype = /datum/job/roguetown/mayor

/datum/outfit/job/roguetown/mayor/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/trou/leather
	head = /obj/item/clothing/head/roguetown/brimmed
	armor = /obj/item/clothing/suit/roguetown/armor/leather/jacket
	shirt = /obj/item/clothing/suit/roguetown/shirt/tunic
	shoes = /obj/item/clothing/shoes/roguetown/boots
	cloak = /obj/item/clothing/cloak/half
	neck = /obj/item/storage/belt/rogue/pouch/coins/rich
	belt = /obj/item/storage/belt/rogue/leather/black
	beltr = /obj/item/storage/keyring/mayor
	beltl = /obj/item/flashlight/flare/torch/lantern
	r_hand = /obj/item/rogueweapon/polearm/woodstaff/quarterstaff
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/labor/lumberjacking, 5, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
		if(H.age == AGE_OLD)
			H.mind?.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			H.change_stat("strength", 1)
			H.change_stat("perception", 1)
			H.change_stat("intelligence", 2)
		else
			H.change_stat("strength", 2)
			H.change_stat("endurance", 1)
			H.change_stat("intelligence", 2)
	H.verbs |= /mob/proc/haltyell

/obj/effect/proc_holder/spell/self/convertrole/town_militia
	name = "Recruit Militia"
	new_role = "Town Militiaman"
	overlay_state = "recruit_guard"
	recruitment_faction = "Garrison"
	recruitment_message = "Join the Town Militia, %RECRUIT!"
	accept_message = "I swear fealty to protect the town!"
	refuse_message = "I refuse."

/datum/job/roguetown/militia //just used to change the title
	title = "Town Militiaman"
	f_title = "Town Militiawoman"
	flag = GUARDSMAN
	department_flag = GARRISON
	faction = "Station"
	total_positions = 0
	spawn_positions = 0
	display_order = JDO_CITYWATCHMEN
