	/*==============*
	*				*
	*	 Humen		*
	*				*
	*===============*/

//	( +1 Fortune )

/mob/living/carbon/human/species/human/northern
	race = /datum/species/human/northern

/datum/species/human/northern
	name = "Humen"
	id = "human"
	desc = "<b>Humen</b><br>\
	Humenity, the ideal image in one of the many Saints. \
	With their tenacity and overwhelming population, humens tend to outnumber the other species drastically. \
	Humens come from a vast swathe of cultures and ethnicities all around Psydonia, most of which \
	have historically been at odds with one another and other species. \
	Humens tend to find fortune easier than the other species, and are so diverse that no other trait \
	are dominant in their species..."

	skin_tone_wording = "Ancestry"

	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,STUBBLE,OLDGREY)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	default_features = list("mcolor" = "FFF", "wings" = "None")
	use_skintones = 1
	possible_ages = list(AGE_CHILD, AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	disliked_food = NONE
	liked_food = NONE
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mm.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fm.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	hairyness = "t1"
	soundpack_m = /datum/voicepack/male
	soundpack_f = /datum/voicepack/female
	offset_features = list(OFFSET_ID = list(0,0), OFFSET_GLOVES = list(0,0), OFFSET_WRISTS = list(0,0),\
	OFFSET_CLOAK = list(0,0), OFFSET_FACEMASK = list(0,0), OFFSET_HEAD = list(0,0), \
	OFFSET_FACE = list(0,0), OFFSET_BELT = list(0,0), OFFSET_BACK = list(0,0), \
	OFFSET_NECK = list(0,0), OFFSET_MOUTH = list(0,0), OFFSET_PANTS = list(0,0), \
	OFFSET_SHIRT = list(0,0), OFFSET_ARMOR = list(0,0), OFFSET_HANDS = list(0,0), OFFSET_UNDIES = list(0,0), \
	OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,0), OFFSET_WRISTS_F = list(0,0), OFFSET_HANDS_F = list(0,0), \
	OFFSET_CLOAK_F = list(0,0), OFFSET_FACEMASK_F = list(0,-1), OFFSET_HEAD_F = list(0,-1), \
	OFFSET_FACE_F = list(0,-1), OFFSET_BELT_F = list(0,0), OFFSET_BACK_F = list(0,-1), \
	OFFSET_NECK_F = list(0,-1), OFFSET_MOUTH_F = list(0,-1), OFFSET_PANTS_F = list(0,0), \
	OFFSET_SHIRT_F = list(0,0), OFFSET_ARMOR_F = list(0,0), OFFSET_UNDIES_F = list(0,0))
	specstats = list("strength" = 0, "perception" = 1, "intelligence" = -1, "constitution" = 0, "endurance" = 1, "speed" = -1, "fortune" = 0)
	specstats_f = list("strength" = -1, "perception" = 0, "intelligence" = 2, "constitution" = -1, "endurance" = 0, "speed" = 1, "fortune" = 0)
	enflamed_icon = "widefire"

	customizers = list(
		/datum/customizer/organ/eyes/humanoid,
		/datum/customizer/bodypart_feature/hair/head/humanoid,
		/datum/customizer/bodypart_feature/hair/facial/humanoid,
		/datum/customizer/bodypart_feature/accessory,
	)
	body_markings = list(
		/datum/body_marking/tonage,
	)

/datum/species/human/northern/check_roundstart_eligible()
	return TRUE

/datum/species/human/northern/get_skin_list()
    return sortList(list(
		"Grenzelhoft" = SKIN_COLOR_GRENZELHOFT, // - (Pale)
		"Otavian" = SKIN_COLOR_OTAVIAN, // - (White 1)
		"Hammerhold" = SKIN_COLOR_HAMMERHOLD, // - (White 2)
		"Albian" = SKIN_COLOR_ALBIAN, // - (White 3)
		"Avar" = SKIN_COLOR_AVAR, // - (White 4)
		"Saludian" = SKIN_COLOR_SALUDIAN, // - (Latin)
		"Zybantine" = SKIN_COLOR_ZYBANTINE, // - (Mediterranean)
		"Gyzan" = SKIN_COLOR_GYZAN, // - (Mediterranean 2)
		"Rhasennian" = SKIN_COLOR_RHASENNIAN, // - (Latin 2)
		"Mourish" = SKIN_COLOR_MOURISH, //  - (Middle-east)
		"Saerasen" = SKIN_COLOR_SAERASEN, // - (Black)
		"Nubien" = SKIN_COLOR_NUBIEN, // - (Very Black)
    ))

/datum/species/human/northern/get_hairc_list()
	return sortList(list(
	"blond - pale" = "9d8d6e",
	"blond - dirty" = "88754f",
	"blond - drywheat" = "d5ba7b",
	"blond - strawberry" = "c69b71",

	"brown - mud" = "362e25",
	"brown - oats" = "584a3b",
	"brown - grain" = "58433b",
	"brown - soil" = "48322a",
	"brown - bark" = "2d1300",

	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b",

	"red - berry" = "b23434",
	"red - wine" = "82534c",
	"red - sunset" = "82462b",
	"red - blood" = "822b2b",
	"red - maroon" = "612929"

	))

/datum/species/human/northern/random_name(gender,unique,lastname)

	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/human/humnorm.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/human/humnorf.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/human/humnorm.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/human/humnorf.txt") )
	return randname

/datum/species/human/northern/random_surname()
	return " [pick(world.file2list("strings/rt/names/human/humnorlast.txt"))]"

/datum/species/human/northern/get_accent_list(mob/living/carbon/human/H)
	switch(H.skin_tone)
		if(SKIN_COLOR_HAMMERHOLD) //Anglish, just a placeholder for now for demonstration.
			return strings("Anglish.json", "Anglish")

	switch(H.skin_tone)
		if(SKIN_COLOR_ZYBANTINE)
			H.grant_language(/datum/language/zybantine)
			to_chat(H, "<span class='info'>I can speak Zybean with ,z before my speech.</span>")

	switch(H.skin_tone)
		if(SKIN_COLOR_GYZAN)
			H.grant_language(/datum/language/zybantine)
			to_chat(H, "<span class='info'>I can speak Zybean with ,z before my speech.</span>")

	switch(H.skin_tone)
		if(SKIN_COLOR_GRENZELHOFT)
			H.grant_language(/datum/language/oldpsydonic)
			to_chat(H, "<span class='info'>I can speak Old Psydonic with ,m before my speech.</span>")
			return strings("german_replacement.json", "german")
