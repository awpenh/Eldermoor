/datum/migrant_role/throne_claimant
	name = "Claimant"
	greet_text = "You have come to Eldermoor on your own accord, seeking to stake your claim to the throne and rally support for your cause. Whether a distant cousin or close relative, you believe your claim is valid."
	allowed_sexes = list(MALE)
	allowed_races = list(
		"Human",
		"Half-Elf")
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE
	outfit = /datum/outfit/job/roguetown/throne_claimant

/datum/outfit/job/roguetown/throne_claimant/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/platelegs
	cloak = /obj/item/clothing/cloak/heartfelt
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/fancy
	armor = /obj/item/clothing/suit/roguetown/armor/plate
	gloves = /obj/item/clothing/gloves/roguetown/plate
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	id = /obj/item/clothing/ring/gold/dorpel
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	belt = /obj/item/storage/belt/rogue/leather/plaquegold
	beltr = /obj/item/flashlight/flare/torch/lantern
	beltl = /obj/item/rogueweapon/sword/long/judgement
	backl = /obj/item/storage/backpack/rogue/satchel
	if(prob(25))
		head = /obj/item/clothing/head/roguetown/crown/circlet/sleepless
	else if(prob(25))
		head = /obj/item/clothing/head/roguetown/crown/circlet/stink
	else if(prob(25))
		head = /obj/item/clothing/head/roguetown/crown/circlet/vision
	else
		head = /obj/item/clothing/head/roguetown/crown/nyle
	backpack_contents = list(/obj/item/rogueweapon/knife/dagger/steel/special = 1, /obj/item/signal_horn = 1)
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/shields, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		var/prev_real_name = H.real_name
		var/prev_name = H.name
		var/honorary = "Duke"
		H.real_name = "[honorary] [prev_real_name]"
		H.name = "[honorary] [prev_name]"
	if(H.age == AGE_OLD)
		H.change_stat("strength", 1)
		H.change_stat("perception", 1)
		H.change_stat("intelligence", 2)
		H.change_stat("endurance", 2)
		H.change_stat("speed", 1)
	else
		H.change_stat("strength", 2)
		H.change_stat("intelligence", 2)
		H.change_stat("endurance", 2)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_NOBLE)
	H.cmode_music = 'sound/music/cmode/garrison/CombatGarrison.ogg'
	H.verbs |= /mob/proc/haltyell

/datum/migrant_role/archer_supporter
	name = "Claiment Archer"
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."
	outfit = /datum/outfit/job/roguetown/archer_supporter
	allowed_sexes = list(MALE)
	allowed_races = list(
		"Human",
		"Dwarf",
		"Anakim",
		"Half-Elf",
		"Elf"
	)
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE

/datum/outfit/job/roguetown/archer_supporter/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/trou/leather
	armor = /obj/item/clothing/suit/roguetown/armor/leather/hide
	backr = /obj/item/gun/ballistic/revolver/grenadelauncher/bow
	shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt/merc
	cloak = /obj/item/clothing/cloak/stabard/guard
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/storage/keyring/guard
	beltr = /obj/item/ammo_holder/quiver/arrows
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	backpack_contents = list(/obj/item/rogueweapon/knife/dagger/steel/special = 1)
	if(prob(30))
		head = /obj/item/clothing/head/roguetown/helmet/kettle
	else
		head = pick(/obj/item/clothing/head/roguetown/roguehood/guard, /obj/item/clothing/head/roguetown/roguehood/guardsecond)

	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/bows, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/lockpicking, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/tanning, 1, TRUE)
		H.change_stat("intelligence", 1)
		H.change_stat("perception", 2)
		H.change_stat("endurance", 1)
		H.change_stat("speed", 2)
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_GENERIC)
	H.cmode_music = 'sound/music/cmode/garrison/CombatGarrison.ogg'

/datum/migrant_role/crossbow_supporter
	name = "Claiment Crossbowman"
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."
	outfit = /datum/outfit/job/roguetown/crossbow_supporter
	allowed_sexes = list(MALE)
	allowed_races = list("Human","Dwarf","Anakim","Half-Elf","Elf")
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE

/datum/outfit/job/roguetown/crossbow_supporter/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/trou/leather
	armor = /obj/item/clothing/suit/roguetown/armor/leather/hide
	backr = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt/merc
	cloak = /obj/item/clothing/cloak/stabard/guard
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/storage/keyring/guard
	beltr = /obj/item/ammo_holder/quiver/bolts
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	backpack_contents = list(/obj/item/rogueweapon/knife/dagger/steel/special = 1)

	if(prob(30))
		head = /obj/item/clothing/head/roguetown/helmet/kettle
	else
		head = pick(/obj/item/clothing/head/roguetown/roguehood/guard, /obj/item/clothing/head/roguetown/roguehood/guardsecond)

	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/crossbows, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/lockpicking, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/tanning, 1, TRUE)

		H.change_stat("intelligence", 1)
		H.change_stat("perception", 2)
		H.change_stat("endurance", 1)
		H.change_stat("speed", 2)

	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_GENERIC)
	H.cmode_music = 'sound/music/cmode/garrison/CombatGarrison.ogg'

/datum/migrant_role/footman_supporter
	name = "Claiment Footman"
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."
	outfit = /datum/outfit/job/roguetown/footman_supporter
	allowed_sexes = list(MALE)
	allowed_races = list("Human","Dwarf","Anakim","Half-Elf","Elf")
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE

/datum/outfit/job/roguetown/footman_supporter/pre_equip(mob/living/carbon/human/H)
	..()
	armor = /obj/item/clothing/suit/roguetown/armor/cuirass
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	neck = /obj/item/clothing/neck/roguetown/gorget
	head = /obj/item/clothing/head/roguetown/helmet/nasal
	backr = /obj/item/rogueweapon/shield/wood
	beltr = /obj/item/rogueweapon/sword/scimitar/messer
	beltl = /obj/item/rogueweapon/mace
	pants = /obj/item/clothing/under/roguetown/trou/leather
	cloak = /obj/item/clothing/cloak/stabard/guard
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)

		H.change_stat("strength", 1)
		H.change_stat("endurance", 2)
		H.change_stat("constitution", 1)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_GENERIC)
	H.cmode_music = 'sound/music/cmode/garrison/CombatGarrison.ogg'
	H.verbs |= /mob/proc/haltyell

/datum/migrant_role/pikeman_supporter
	name = "Claiment Pikeman"
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."
	outfit = /datum/outfit/job/roguetown/pikeman_supporter
	allowed_sexes = list(MALE)
	allowed_races = list("Human","Dwarf","Anakim","Half-Elf","Elf")
	grant_lit_torch = TRUE
	show_wanderer_examine = FALSE

/datum/outfit/job/roguetown/pikeman_supporter/pre_equip(mob/living/carbon/human/H)
	..()
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	neck = /obj/item/clothing/neck/roguetown/gorget
	head = /obj/item/clothing/head/roguetown/helmet/kettle
	beltr = /obj/item/rogueweapon/sword/scimitar/messer
	pants = /obj/item/clothing/under/roguetown/trou/leather
	cloak = /obj/item/clothing/cloak/stabard/guard
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather

	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("endurance", 1)
		H.change_stat("constitution", 1)
		H.change_stat("speed", -1)
		H.verbs |= /mob/proc/haltyell
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_KNOWBANDITS, TRAIT_GENERIC)

	var/weapontype = pickweight(list("Spear" = 6, "Bardiche" = 4))
	switch(weapontype)
		if("Spear")
			backr = /obj/item/rogueweapon/polearm/spear
		if("Bardiche")
			backr = /obj/item/rogueweapon/polearm/halberd/bardiche

/datum/migrant_wave/throne_claimant
	name = "The Claiment's Invasion"
	max_spawns = 2
	shared_wave_type = /datum/migrant_wave/knight
	downgrade_wave = /datum/migrant_wave/throne_claimant_down
	weight = 0
	roles = list(
		/datum/migrant_role/throne_claimant = 1,
		/datum/migrant_role/footman_supporter = 2,
		/datum/migrant_role/pikeman_supporter = 2,
		/datum/migrant_role/archer_supporter = 2,
		/datum/migrant_role/crossbow_supporter = 2
	)
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."

/datum/migrant_wave/throne_claimant_down
	name = "The Claiment's Invasion"
	shared_wave_type = /datum/migrant_wave/throne_claimant
	downgrade_wave = /datum/migrant_wave/throne_claimant_down_one
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/throne_claimant = 1,
		/datum/migrant_role/footman_supporter = 1,
		/datum/migrant_role/pikeman_supporter = 1,
		/datum/migrant_role/archer_supporter = 1,
		/datum/migrant_role/crossbow_supporter = 1
	)
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."

/datum/migrant_wave/throne_claimant_down_one
	name = "The Claiment's Invasion"
	shared_wave_type = /datum/migrant_wave/throne_claimant
	downgrade_wave = /datum/migrant_wave/throne_claimant_down_two
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/throne_claimant = 1,
		/datum/migrant_role/footman_supporter = 1,
		/datum/migrant_role/pikeman_supporter = 1,
		/datum/migrant_role/archer_supporter = 1,
	)
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."

/datum/migrant_wave/throne_claimant_down_two
	name = "The Claiment's Invasion"
	shared_wave_type = /datum/migrant_wave/throne_claimant
	downgrade_wave = /datum/migrant_wave/throne_claimant_down_three
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/throne_claimant = 1,
		/datum/migrant_role/footman_supporter = 1,
		/datum/migrant_role/pikeman_supporter = 1,
	)
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."

/datum/migrant_wave/throne_claimant_down_three
	name = "The Claiment's Invasion"
	shared_wave_type = /datum/migrant_wave/throne_claimant
	downgrade_wave = /datum/migrant_wave/throne_claimant_down_four
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/throne_claimant = 1,
		/datum/migrant_role/footman_supporter = 1,
	)
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."

/datum/migrant_wave/throne_claimant_down_four
	name = "The Claiment's Invasion"
	shared_wave_type = /datum/migrant_wave/throne_claimant
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/throne_claimant = 1,
	)
	greet_text = "You have come to Eldermoor in service of your liege lord, seeking to aid in his claim to the throne."

