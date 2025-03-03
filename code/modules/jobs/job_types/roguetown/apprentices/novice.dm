/datum/job/roguetown/novice
	title = "Novice"
	flag = NOVICE
	department_flag = APPRENTICES
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf"
	)
	allowed_ages = list(AGE_CHILD)

	tutorial = "Your master once saw potential in you, something you are uncertain if they still do with your recent studies. The path to using magic is something treacherous and untamed, and you are still decades away from calling yourself even a journeyman in the field. Listen and serve, and someday you will earn your hat."

	outfit = /datum/outfit/job/roguetown/novice
	display_order = JDO_NOVICE
	give_bank_account = TRUE
	bypass_lastclass = TRUE
	can_have_apprentices = FALSE


/datum/outfit/job/roguetown/novice/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/tights/uncolored
	head = /obj/item/clothing/head/roguetown/roguehood/uncolored
	shoes = /obj/item/clothing/shoes/roguetown/sandals
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/key/tower
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/plain
	backr = /obj/item/storage/backpack/rogue/satchel
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/magic/arcane, pick(1,2), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fetch)

	H.change_stat("intelligence", 1)
	H.change_stat("speed", -1)
	ADD_TRAIT(H, TRAIT_SEEPRICES, TRAIT_GENERIC)

	if(H.gender == MALE)
		var/acceptable = list("None")
		if(!(H.facial_hairstyle in acceptable))
			H.facial_hairstyle = pick(acceptable)
			H.update_hair()
