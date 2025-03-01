	/*==============*
	*				*
	*	Dark Elf	*
	*				*
	*===============*/

//	( + Night Vision Plus )

/mob/living/carbon/human/species/elf/dark
	race = /datum/species/elf/dark

/datum/species/elf/dark
	name = "Dark Elf"
	id = "elf"
	desc = "<b>Dark Elf</b><br>\
	Once a proud and mighty civilization, the dark elves bent magic to their will, shaping both their forms and their fate.\
	Their greatest mages wove enchantments to darken their skin, shielding themselves from the relentless elements of their homeland,\
	and their empire stood as a rival to the high elves in power and influence.\
	But greatness came at a price—when a human slave named Julius defied his chains and was granted sainthood by Psydon, divine retribution followed.\
	In his wrath, Psydon shattered the dark elven empire, razing their cities, sundering their lands, and leaving their people in ruin.\
	The once-great civilization crumbled beneath the weight of divine punishment, forced to claw its way back from the ashes.\
	From this ruin, only one force could lead them to salvation: Zizo.\
	A conqueror, a god in the making, he reforged their broken people under his rule, not as they once were, but as they must become.\
	Under the new laws of Zizo, strength and ambition are the only truths—loyalty is currency, and weakness is death.\
	In his vision, there is no place for the petty divisions of the past; only power determines one’s place.\
	Where cunning and ambition rule, gender holds no weight, and all who seek power may take it if they are strong enough.\
	Though they once sought to rival the elves in magic, they now seek to reclaim their legacy through conquest and domination.\
	A dark elf is a symbol of cunning and cold ambition,\
	a survivor of a people who refuse to die, waiting for the day they rise once more.\
	\
	THIS IS A DISCRIMINATED SPECIES. EXPECT A MORE DIFFICULT EXPERIENCE. PLAY AT YOUR OWN RISK."

	skin_tone_wording = "Home City"

	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,OLDGREY)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	default_features = list("mcolor" = "FFF", "ears" = "Elf", "wings" = "None")
	use_skintones = 1
	disliked_food = NONE
	liked_food = NONE
	possible_ages = list(AGE_CHILD, AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mem.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/ft.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	hairyness = "t3"
	mutant_bodyparts = list("ears")
	mutanteyes = /obj/item/organ/eyes/elf
	use_f = TRUE
	soundpack_m = /datum/voicepack/male/elf
	soundpack_f = /datum/voicepack/female/elf
	offset_features = list(	OFFSET_ID = list(0,0), OFFSET_GLOVES = list(0,1), OFFSET_WRISTS = list(0,1), OFFSET_HANDS = list(0,0), \
	OFFSET_CLOAK = list(0,1), OFFSET_FACEMASK = list(0,0), OFFSET_HEAD = list(0,0), \
	OFFSET_FACE = list(0,0), OFFSET_BELT_F = list(0,1), OFFSET_BACK = list(0,0), \
	OFFSET_NECK = list(0,0), OFFSET_MOUTH = list(0,0), OFFSET_PANTS = list(0,1), \
	OFFSET_SHIRT = list(0,1), OFFSET_ARMOR = list(0,1), OFFSET_UNDIES = list(0,1),\
	OFFSET_ID_F = list(0,0), OFFSET_GLOVES_F = list(0,1), OFFSET_WRISTS_F = list(0,1), OFFSET_HANDS_F = list(0,1), \
	OFFSET_CLOAK_F = list(0,1), OFFSET_FACEMASK_F = list(0,0), OFFSET_HEAD_F = list(0,0), \
	OFFSET_FACE_F = list(0,0), OFFSET_BELT_F = list(0,0), OFFSET_BACK_F = list(0,0), \
	OFFSET_NECK_F = list(0,0), OFFSET_MOUTH_F = list(0,0), OFFSET_PANTS_F = list(0,1), \
	OFFSET_SHIRT_F = list(0,1), OFFSET_ARMOR_F = list(0,1), OFFSET_UNDIES_F = list(0,1))
	specstats = list("strength" = 0, "perception" = -1, "intelligence" = 2, "constitution" = -1, "endurance" = -1, "speed" = 2, "fortune" = 0)
	specstats_f = list("strength" = 1, "perception" = -1, "intelligence" = 2, "constitution" = 0, "endurance" = 1, "speed" = 2, "fortune" = 0)
	enflamed_icon = "widefire"
	patreon_req = 0

	customizers = list(
		/datum/customizer/organ/eyes/humanoid,
		/datum/customizer/bodypart_feature/hair/head/humanoid,
		/datum/customizer/bodypart_feature/hair/facial/humanoid,
		/datum/customizer/bodypart_feature/accessory,
	)
	body_markings = list(
		/datum/body_marking/tonage,
	)

/datum/species/elf/dark/get_span_language(datum/language/message_language)
	if(!message_language)
		return
	if(message_language.type == /datum/language/elvish)
		return list(SPAN_DELF)
	return message_language.spans
/*
/datum/species/elf/dark/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	. = ..()
	C.remove_language(/datum/language/common)

/datum/species/elf/dark/on_species_loss(mob/living/carbon/C)
	. = ..()
	C.grant_language(/datum/language/common)
*/
/datum/species/elf/dark/check_roundstart_eligible()
	return TRUE

/datum/species/elf/dark/get_skin_list()
	return sortList(list(
		"Shodom" = SKIN_COLOR_MAGGOT, // - (Pale blue)
		"Comorrah" = SKIN_COLOR_COCOON, // - (Pale purple)
		"Gloomhaven" = SKIN_COLOR_ASHEN, // - (Pale grey)
		"Darkpila" = SKIN_COLOR_SPIDER_VENOM, // - (Deep grey)
		"Sshanntynlan" = SKIN_COLOR_JACKPOISON, // - (Grey-purple)
		"Llurth Drei" = SKIN_COLOR_HOMUNCULUS, // - (Grey-blue)
		"Tafravma" = SKIN_COLOR_ARACHNID_ICHOR, // - (Black-blue)
		"Snow Elf" = SKIN_COLOR_SNOW_ELF, // - (Pale white)
		"Yuethindrynn" = SKIN_COLOR_GLOOMHAVEN, // - (Pink)
	))

/datum/species/elf/dark/get_hairc_list()
	return sortList(list(
	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b",

	"white - cavedew" = "dee9ed",
	"white - spiderweb" = "f4f4f4"

	))

/datum/species/elf/dark/random_name(gender,unique,lastname)
	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/elf/elfdm.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/elf/elfdf.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/elf/elfdm.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/elf/elfdf.txt") )
	return randname

/datum/species/elf/dark/random_surname()
	return " [pick(world.file2list("strings/rt/names/elf/elfsnf.txt"))]"

/datum/species/elf/dark/get_accent_list(mob/living/carbon/human/species/elf/dark/H)
	switch(H.skin_tone)
		if(SKIN_COLOR_GLOOMHAVEN) //Gloomhaven
			return strings("Anglish.json", "Anglish") //Test example of how accents, if's and elses work.
		else
			return strings("french_replacement.json", "french")
