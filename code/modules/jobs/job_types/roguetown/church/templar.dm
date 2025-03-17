/datum/job/roguetown/templar
	title = "Templar"
	department_flag = CHURCHMEN
	faction = "Station"
	tutorial = "Templars are warriors who have forsaken wealth and title in lieu of service to the church, due to either zealotry or a past shame. They guard the church and its priest, while keeping a watchful eye against heresy and nite-creechers. Within troubled dreams, they wonder if the blood they shed makes them holy or stained."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Dwarf",
		"Anakim",
		"Half-Elf",
	)
	allowed_patrons = ALL_TEMPLAR_PATRONS
	outfit = /datum/outfit/job/roguetown/templar
	total_positions = 2
	spawn_positions = 2
	display_order = JDO_TEMPLAR
	give_bank_account = 0
	min_pq = 0

/datum/outfit/job/roguetown/templar
	name = "Templar"
	jobtype = /datum/job/roguetown/templar
	allowed_patrons = ALL_TEMPLAR_PATRONS

/datum/outfit/job/roguetown/templar/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/heavy/bucket
	cloak = /obj/item/clothing/cloak/tabard/crusader/tief
	switch(H.patron?.type)
		if(/datum/patron/veneration/lythios)
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/lythios
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/lythios
			cloak = /obj/item/clothing/cloak/stabard/templar/lythios
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if(/datum/patron/veneration/eosten)
			neck = /obj/item/clothing/neck/roguetown/psycross/eosten
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/eosten
			cloak = /obj/item/clothing/cloak/stabard/templar/eosten
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if(/datum/patron/veneration/yaakov)
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/yaakov
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/yaakovhelm
			cloak = /obj/item/clothing/cloak/stabard/templar/yaakov
			H.cmode_music = 'sound/music/cmode/garrison/CombatForestGarrison.ogg'
		if(/datum/patron/veneration/labbeus)
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/labbeus
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/labbeus
			cloak = /obj/item/clothing/cloak/stabard/templar/labbeus
			H.cmode_music = 'sound/music/cmode/church/CombatGravekeeper.ogg'
		if(/datum/patron/veneration/mikros)
			neck = /obj/item/clothing/neck/roguetown/psycross/silver/mikros
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/mikroshelm
			cloak = /obj/item/clothing/cloak/stabard/templar/mikros
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
		if(/datum/patron/veneration/nazar)
			head = /obj/item/clothing/head/roguetown/helmet/sallet/nazar
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/nazar
			neck = /obj/item/clothing/neck/roguetown/chaincoif
			cloak = /obj/item/clothing/cloak/stabard/templar/nazar
			H.cmode_music = 'sound/music/cmode/church/CombatEora.ogg'
			H.virginity = FALSE
		if(/datum/patron/veneration/mathuin)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/mathuin
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/mathuin
			cloak = /obj/item/clothing/cloak/stabard/templar/mathuin
			H.cmode_music = 'sound/music/cmode/adventurer/CombatOutlander2.ogg'
		if(/datum/patron/veneration/toma)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/toma
			head = /obj/item/clothing/head/roguetown/helmet/heavy/necked/tomahelm
			cloak = /obj/item/clothing/cloak/stabard/templar/toma
			H.cmode_music = 'sound/music/cmode/adventurer/CombatOutlander2.ogg'
		if(/datum/patron/veneration/cana)
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/cana
			cloak = /obj/item/clothing/cloak/stabard/templar/cana
			H.cmode_music = 'sound/music/cmode/adventurer/CombatMonk.ogg'
			H.mind?.adjust_skillrank(/datum/skill/labor/fishing, 1, TRUE)
		if(/datum/patron/veneration/patras)
			head = /obj/item/clothing/head/roguetown/helmet/visored/hounskull
			wrists = /obj/item/clothing/wrists/roguetown/bracers
		if(/datum/patron/psydon)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/bucket/gold
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver


	armor = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	pants = /obj/item/clothing/under/roguetown/chainlegs
	shoes = /obj/item/clothing/shoes/roguetown/boots
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/storage/keyring/priest = 1)
	backr = /obj/item/rogueweapon/shield/tower/metal
	belt = /obj/item/storage/belt/rogue/leather/black
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	id = /obj/item/clothing/ring/silver
	gloves = /obj/item/clothing/gloves/roguetown/chain
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("constitution", 2)
		H.change_stat("endurance", 2)
		H.change_stat("speed", -1)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
	switch(H.patron?.type)
		if(/datum/patron/veneration/toma)
			H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 4, TRUE)
			beltr = /obj/item/rogueweapon/mace/warhammer/steel
		else
			H.mind?.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
			beltr = /obj/item/rogueweapon/sword/long
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_GENERIC)

	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron)
	//Max devotion limit - Templars are stronger but cannot pray to gain more abilities beyond t1
	C.grant_spells_templar(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
	if(H.dna?.species)
		if(H.dna.species.id == "humen")
			H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
