/datum/patron/godless
	name = "Godless"
	domain = "Defiance of the Divine"
	desc = "The gods exist, yet you refuse to kneel. Whether out of unshakable will, belief in mortal strength, or rejection of divine rule, you walk a path free from worship."
	flaws = "Unwavering, Resolute, Defiant"
	worshippers = "Seekers of Freedom, The Faithless, Those Who Reject Fate"
	sins = "Idolatry, Devotion, Surrender to the Divine"
	boons = "None—your strength is your own."
	associated_faith = /datum/faith/godless

	profane_words = list()
	confess_lines = list(
		"No gods, no masters—only my own will!"
		"A man chooses; a slave obeys. I will not kneel!"
		"The old ways will crumble! I reject their rule!"
	)

/datum/patron/godless/can_pray(mob/living/follower)
	// Redefined this entire proc just to tell you:
	// Yes, the godless can pray. This is intentional.
	// Maybe they pray to themselves?
	return TRUE

/datum/patron/godless/hear_prayer(mob/living/follower, message)
	return FALSE
