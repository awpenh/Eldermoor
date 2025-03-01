/datum/patron/psydon
	name = "Psydon"
	domain = "God of Humanity, Dreams, and Creation"
	desc = "Living and eternal, He stands as the one true God, the guiding light and the unseen hand. Neither time nor doubt can diminish His presence—for He is, and always will be"
	flaws = "Grudge-Holding, Judgemental, Wrathful"
	worshippers = "Grenzelhofters, Inquisitors, Heroes"
	sins = "Apostasy, Demon Worship, Betraying thy Father"
	boons = "You possess an innate sense for suffering—whether hidden or unspoken, you can always tell when someone is in pain."
	added_traits = list(TRAIT_EMPATH)
	associated_faith = /datum/faith/psydon
	confess_lines = list(
		"THERE IS ONLY ONE GOD!",
		"HIS LIGHT GUIDES ME!",
		"PSYDON IS AND HAS ALWAYS BEEN!",
	)

/datum/patron/psydon/can_pray(mob/living/carbon/human/follower)
	//We just kind of assume the follower is a human here
	if(istype(follower.wear_neck, /obj/item/clothing/neck/roguetown/psycross))
		return TRUE

	to_chat(follower, span_danger("I can not talk to Him... I need His cross on my neck!"))
	return FALSE
