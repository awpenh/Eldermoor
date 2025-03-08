/datum/migrant_role/blackknight
	name = "Black Knight"
	greet_text = "Once a feared outlaw whose name alone could silence taverns, your armor forged of blacksteel is as unyielding as your resolve. Shrouded in darkness, you've embraced your notoriety, carving your legacy from shadows and steel. Now, step forth from the twilight—claim your dominion, and let the world tremble at the Black Knight's return."
	allowed_sexes = list(MALE)
	allowed_races = list("Humen")
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE
	outfit = /datum/outfit/job/roguetown/blackknight

/datum/outfit/job/roguetown/blackknight/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/heavy/blkknight
	neck = /obj/item/clothing/neck/roguetown/bevor
	armor = /obj/item/clothing/suit/roguetown/armor/plate/blkknight
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	cloak = /obj/item/clothing/cloak/cape/blkknight
	gloves = /obj/item/clothing/gloves/roguetown/plate/blk
	pants = /obj/item/clothing/under/roguetown/platelegs/blk
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor/blkknight
	belt = /obj/item/storage/belt/rogue/leather/plaquegold
	beltr = /obj/item/rogueweapon/sword/long/death
	beltl = /obj/item/flashlight/flare/torch/lantern
	backr = /obj/item/storage/backpack/rogue/satchel/black
	backl = /obj/item/rogueweapon/shield/tower/metal
	backpack_contents = list(/obj/item/rogueweapon/knife/dagger = 1)
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/riding, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/labor/butchering, 1, TRUE)
	H.change_stat("strength", 3)
	H.change_stat("endurance", 1)
	H.change_stat("constitution", 2)
	H.change_stat("intelligence", 2)
	H.change_stat("speed", 1)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_BANDITCAMP, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_SEEPRICES, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_VILLAIN, TRAIT_GENERIC)
	H.cmode_music = 'sound/music/cmode/antag/combat_bandit.ogg'

/datum/outfit/job/roguetown/blackknight/post_equip(mob/living/carbon/human/H)
	..()
	var/datum/antagonist/new_antag = new /datum/antagonist/bandit()
	H.mind.add_antag_datum(new_antag)
	addtimer(CALLBACK(H, TYPE_PROC_REF(/mob/living/carbon/human, choose_name_popup), "BANDIT"), 5 SECONDS)

/datum/migrant_wave/blackknight
	name = "The Black Knight"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/blackknight
	weight = 1
	roles = list(
		/datum/migrant_role/blackknight = 1,
	)
	greet_text = "Embrace the darkness, cloak yourself in blacksteel, and let your blade answer the cries of those who fear your name. Infamy and steel grant you dominion."
