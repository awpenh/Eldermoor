/datum/migrant_role/daywalker
	name = "Daywalker"
	greet_text = "Some knaves are always trying to wade upstream. Once, you were a scourge upon the land—a thief, a killer, a shadow in the night. But the undead took everything from you. The Templars found you broken and offered redemption through steel and fire. Now, you hunt the restless dead as a daywalker, sworn to the light. The oath binds you, and so does the mask—you shall never remove it, lest you forget the monster you once were."
	outfit = /datum/outfit/job/roguetown/daywalker
	allowed_sexes = list(MALE)
	allowed_races = list("Humen", "Half-Elf")
	grant_lit_torch = TRUE

/datum/outfit/job/roguetown/daywalker/pre_equip(mob/living/carbon/human/H)
	..()
	wrists = /obj/item/clothing/neck/roguetown/psycross/silver/
	gloves = /obj/item/clothing/gloves/roguetown/angle
	pants = /obj/item/clothing/under/roguetown/tights/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/black
	armor = /obj/item/clothing/suit/roguetown/armor/leather/splint
	cloak = /obj/item/clothing/cloak/cape/daywalker
	head = /obj/item/clothing/head/roguetown/roguehood/daywalker
	neck = /obj/item/storage/belt/rogue/pouch/gunpowder
	shoes = /obj/item/clothing/shoes/roguetown/nobleboot
	beltl = /obj/item/gun/ballistic/revolver/grenadelauncher/pistol
	mask = /obj/item/clothing/mask/rogue/facemask/daywalker
	beltr = /obj/item/rogueweapon/sword/rapier
	belt = /obj/item/storage/belt/rogue/leather/daywalker
	backr = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	backl = /obj/item/ammo_holder/quiver/bolts
	id = /obj/item/clothing/ring/silver
	H.virginity = TRUE

	if(H.mind)
		if(H.patron != /datum/patron/psydon)
			H.set_patron(/datum/patron/psydon)

		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE) // can you guys help me, there's so many vampires
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 5)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 4, TRUE) // some motherfuckers are always trying to ice skate uphill
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/firearms, 2, TRUE) // Blade 3 Trinity
		H.change_stat("strength", 1)
		H.change_stat("constitution", 1)
		H.change_stat("endurance", 2)
		if(!H.has_language(/datum/language/oldpsydonic))
			H.grant_language(/datum/language/oldpsydonic)
		var/prev_real_name = H.real_name
		var/prev_name = H.name
		var/honorary = "Vigilant"
		H.real_name = "[honorary] [prev_real_name]"
		H.name = "[honorary] [prev_name]"

	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	H.verbs |= /mob/living/carbon/human/proc/torture_victim //ARE YOU A FUCKING VAMPIRE?
	H.verbs |= /mob/living/carbon/human/proc/faith_test //ARE YOU A FUCKING HERETIC?!
	to_chat(H,span_info("\
		-I can speak Old Psydonic with ,m before my speech.\n\
		-The High Inquisitor has sent you to purge the darkness festering in this town. With the light at your back and the oath upon your soul, make the Vigil proud.")
		)
	H.cmode_music = 'sound/music/cmode/antag/CombatThrall.ogg'

/datum/migrant_wave/daywalker
	name = "Psydon's Daywalker"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/daywalker
	weight = 7
	roles = list(
		/datum/migrant_role/daywalker = 1,
	)
	greet_text = "You give the Monarch's demense a message. You tell them it's open season on all suckheads."
