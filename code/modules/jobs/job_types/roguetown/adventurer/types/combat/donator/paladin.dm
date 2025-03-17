/datum/advclass/combat/paladin
	name = "Paladin"
	tutorial = "Paladins are former noblemen and clerics who have dedicated themselves to great combat prowess. Often, they were promised redemption for past sins if they crusaded in the name of the gods."
	allowed_sexes = list(MALE)
	allowed_races = list(
		"Humen",
		"Half-Elf"
	)
	outfit = /datum/outfit/job/roguetown/adventurer/paladin
	maximum_possible_slots = 1
	min_pq = 2
	pickprob = 15
	category_tags = list(CTAG_ADVENTURER)

/datum/outfit/job/roguetown/adventurer/paladin/pre_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE

	switch(H.patron?.type)
		if(/datum/patron/psydon)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/bucket/gold
			wrists = /obj/item/clothing/neck/roguetown/psycross/g
		if(/datum/patron/veneration/lythios)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/lythios
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/lythios
		if(/datum/patron/veneration/eosten)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/eosten
			wrists = /obj/item/clothing/neck/roguetown/psycross/eosten
		if(/datum/patron/veneration/yaakov)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/yaakovhelm
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/yaakov
		if(/datum/patron/veneration/cana)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/bucket // Placeholder
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/cana
		if(/datum/patron/veneration/labbeus)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/labbeus
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/labbeus
		if(/datum/patron/veneration/mathuin)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/bucket // Placeholder
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/mathuin
		if(/datum/patron/veneration/julias)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/bucket // Placeholder
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/julius
		if(/datum/patron/veneration/mikros)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/mikroshelm
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/mikros
		if(/datum/patron/veneration/toma)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/tomahelm
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/toma
		if(/datum/patron/veneration/nazar)
			head = /obj/item/clothing/head/roguetown/helmet/sallet/nazar
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/nazar
			H.virginity = FALSE
		if(/datum/patron/inhumen/baotha, /datum/patron/inhumen/graggar, /datum/patron/inhumen/zizo, /datum/patron/inhumen/matthios, /datum/patron/inhumen/graggar_zizo, /datum/patron/godless, /datum/patron/demons/azriel, /datum/patron/demons/pryda, /datum/patron/demons/vorrak, /datum/patron/demons/zaresk)
			head = /obj/item/clothing/head/roguetown/jester
			if(H.mind)
				H.change_stat("fortune", -20)
		else // Failsafe
			head = /obj/item/clothing/head/roguetown/helmet/heavy/bucket
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver

	armor = /obj/item/clothing/suit/roguetown/armor/cuirass
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	pants = /obj/item/clothing/under/roguetown/platelegs
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	belt = /obj/item/storage/belt/rogue/leather/steel
	beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
	id = /obj/item/clothing/ring/silver/toper
	cloak = /obj/item/clothing/cloak/tabard/crusader
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	gloves = /obj/item/clothing/gloves/roguetown/plate
	backl = /obj/item/rogueweapon/sword/long/judgement
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
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
	if(H.dna?.species)
		if(H.dna.species.id == "human")
			H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron)
	//Paladins, while devout warriors spent WAY too much time studying the blade. No more acolyte+
	C.grant_spells_templar(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)

	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
