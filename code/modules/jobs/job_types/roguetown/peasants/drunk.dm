
/datum/job/roguetown/drunk
	title = "Drunk"
	flag = GRAVETENDER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 2
	spawn_positions = 2

	allowed_races = list(
		"Humen",
		"Elf",
		"Dwarf",
		"Half-Elf",
		"Tiberian",
		"Dark Elf"
	)
	outfit = /datum/outfit/job/roguetown/drunk
	bypass_lastclass = TRUE
	banned_leprosy = FALSE
	advclass_cat_rolls = list(CTAG_DRUNK = 20)

	tutorial = "The cold stone and iron bars of the city jail are a harsh contrast to the warmth of last night's drink. Whether a noble squandering their fortune, an adventurer who let ale dull their sword hand, or a lowlife who mistook liquid courage for invincibility, the story always ends the same—with a pounding headache and a cell to sober up in. Perhaps this is a wake-up call, a chance to steady your feet and walk a straighter path. Or maybe it's just another night, another cell, and the promise of another drink once you're free."

	banned_leprosy = FALSE
	display_order = JDO_DRUNK
	give_bank_account = 173
	min_pq = -100
	can_random = FALSE
	bypass_lastclass = TRUE

	cmode_music = 'sound/music/cmode/towner/CombatPrisoner.ogg'
	can_have_apprentices = FALSE

/datum/job/roguetown/drunk/after_spawn(mob/living/H, mob/M, latejoin)
	if(ishuman(H))
		var/mob/living/carbon/human/Q = H
		Q.advsetup = 1
		Q.invisibility = INVISIBILITY_MAXIMUM
		Q.become_blind("advsetup")


/datum/advclass/drunk
	displays_adv_job = FALSE

/datum/advclass/drunk/noble
	name = "Drunk Noble"
	tutorial = "You're a noble, a name that should command respect, wealth, and influence. Yet here you are, rotting in a city jail, reeking of last night's excess. You tell yourself you were meant for greatness, that your deeds, not just your bloodline, will make you unforgettable. But instead of glory, you've found the bottom of a bottle, and the only audience you've won over is a pair of bored guards deciding if you're worth the trouble."
	outfit = /datum/outfit/job/roguetown/drunk/noble
	category_tags = list(CTAG_DRUNK)

/datum/outfit/job/roguetown/drunk/noble/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/tights/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/winterjacket
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather
	backr = /obj/item/storage/backpack/rogue/satchel
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.change_stat("fortune", -3)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)

/datum/advclass/drunk/adventurer
	name = "Wandering Drunk"
	tutorial = "You came to this land seeking adventure, glory, maybe even a bit of coin. Instead, you found the bottom of a bottle and the wrong end of a bar fight. Now you're nursing a pounding headache in a city jail, the taste of cheap ale and regret still fresh on your tongue. The only battle you won last night was against your own balance, and the only reward you've earned is a cold cell and the laughter of the guards outside."
	outfit = /datum/outfit/job/roguetown/drunk/adventurer
	category_tags = list(CTAG_DRUNK)

/datum/outfit/job/roguetown/drunk/adventurer/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/boots
	gloves = /obj/item/clothing/gloves/roguetown/leather
	belt = /obj/item/storage/belt/rogue/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/random
	pants = /obj/item/clothing/under/roguetown/tights/black
	backl = /obj/item/storage/backpack/rogue/satchel
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.change_stat("fortune", -3)

/datum/advclass/drunk/lowlife
	name = "Lowlife Drunk"
	tutorial = "You've scraped by on lies, quick hands, and bad decisions, but this time, the drink got the better of you. One too many, a few too many insults, and now you're waking up in a city jail, bruised, reeking of ale, and short on coin. The guards outside are laughing, probably betting on how long before you end up back here. If you had any shame left, maybe you'd care—but right now, all you want is another drink."
	outfit = /datum/outfit/job/roguetown/drunk/lowlife
	category_tags = list(CTAG_DRUNK)

/datum/outfit/job/roguetown/drunk/lowlife/pre_equip(mob/living/carbon/human/H)
	..()
	belt = /obj/item/storage/belt/rogue/leather
	pants = /obj/item/clothing/under/roguetown/tights/black
	armor = /obj/item/clothing/suit/roguetown/armor/leather/jacket
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/misc/sneaking, pick(2), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/stealing, pick(2), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/lockpicking, pick (2), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, pick(3), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, pick(2), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, pick(3), TRUE)
		H.change_stat("fortune", -3)
