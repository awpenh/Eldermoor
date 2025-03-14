/datum/advclass/combat/battlenun
	name = "Battle Nun"
	tutorial = "Battle Nuns are rare warrior-priestesses, wielding faith and steel in defiance of tradition. Unlike their male counterparts, they earn no promised redemption—only relentless trials to prove their worth. Their prayers are spoken through battle, their devotion tested with every strike."
	allowed_sexes = list(FEMALE)
	allowed_races = list("Humen")
	outfit = /datum/outfit/job/roguetown/adventurer/battlenun
	maximum_possible_slots = 1
	min_pq = 2
	pickprob = 5
	category_tags = list(CTAG_ADVENTURER)

/datum/outfit/job/roguetown/adventurer/battlenun/pre_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE

	switch(H.patron?.type)
		if(/datum/patron/psydon)
			wrists = /obj/item/clothing/neck/roguetown/psycross/g
		if(/datum/patron/veneration/lythios)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/lythios
		if(/datum/patron/veneration/eosten)
			wrists = /obj/item/clothing/neck/roguetown/psycross/eosten
		if(/datum/patron/veneration/yaakov)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/yaakov
		if(/datum/patron/veneration/cana)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/cana
		if(/datum/patron/veneration/labbeus)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/labbeus
		if(/datum/patron/veneration/mathuin)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/mathuin
		if(/datum/patron/veneration/julias)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/julius
		if(/datum/patron/veneration/mikros)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/mikros
		if(/datum/patron/veneration/toma)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/toma
		if(/datum/patron/veneration/nazar)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/nazar
		if(/datum/patron/inhumen/baotha, /datum/patron/inhumen/graggar, /datum/patron/inhumen/zizo, /datum/patron/inhumen/matthios, /datum/patron/inhumen/graggar_zizo, /datum/patron/godless, /datum/patron/demons/azriel, /datum/patron/demons/pryda, /datum/patron/demons/vorrak, /datum/patron/demons/zaresk)
			head = /obj/item/clothing/head/roguetown/jester
			if(H.mind)
				H.change_stat("fortune", -20)
		else // Failsafe
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver

	head = /obj/item/clothing/head/roguetown/helmet/battlenun
	armor = /obj/item/clothing/suit/roguetown/armor/cuirass
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	pants = /obj/item/clothing/under/roguetown/platelegs
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	belt = /obj/item/storage/belt/rogue/leather/steel
	beltl = /obj/item/rogueweapon/sword/silver
	beltr = /obj/item/rogueweapon/flail/sflail
	id = /obj/item/clothing/ring/silver/toper
	cloak = /obj/item/clothing/cloak/battlenun
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	gloves = /obj/item/clothing/gloves/roguetown/chain
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("perception", 2)
		H.change_stat("intelligence", 2)
		H.change_stat("constitution", 1)
		H.change_stat("endurance", 1)
		H.change_stat("speed", -2)
		H.change_stat("fortune", 1)
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron)
	C.grant_spells_templar(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)

	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
