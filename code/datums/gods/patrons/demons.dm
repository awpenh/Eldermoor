/datum/patron/demons
	name = null
	associated_faith = /datum/faith/demons

	profane_words = list()
	confess_lines = list(
		"PSYDON AND HIS CHILDREN ARE USURPERS!",
		"THEIR BANISHMENT WAS NOT OUR END—IT WAS OUR BEGINNING!",
		"THEY WEAVE LIES TO BIND US, BUT WE WILL BREAK FREE!"
	)

/datum/patron/demons/can_pray(mob/living/follower)
	for(var/obj/structure/fluff/psycross/cross in view(7, get_turf(follower)))
		if(!cross.obj_broken)
			to_chat(follower, span_danger("That accursed cross won't let me commune with the Banished!"))
			return FALSE

	return TRUE

/* ----------------- */

/datum/patron/demons/azriel
	name = "Azriel"
	domain = "Demon Prince, Lord of Gifts, Deals, and Hollow Promises"
	desc = "Azriel, the Chief Prince and most powerful among the exiled. A cunning trickster and master of temptation, Azriel offers gifts that always come with a hidden cost. He whispers sweet bargains to the desperate, turning greed into chains and promises into shackles. His generosity is limitless, but his price is never fair."
	flaws = "Deception, Manipulation, Merciless Bargaining"
	worshippers = "Merchants, Tiberians, Thieves, Bargain-Makers, the Desperate"
	sins = "Rejecting a Gift, Breaking a Deal, Giving Without Gain"
	boons = "Azriel's gift reveals the true worth of all things—nothing is beyond appraisal, and no deal is beyond my grasp."
	added_traits = list(TRAIT_SEEPRICES)
	confess_lines = list(
		"EVERY GIFT HAS A PRICE! AZRIEL GIVES, AZRIEL TAKES!",
		"A DEAL STRUCK IN AZRIEL'S NAME IS A DEAL SEALED IN FATE!",
		"ASK, AND AZRIEL SHALL PROVIDE… FOR A COST!"
	)

/datum/patron/demons/pryda
	name = "Pryda"
	domain = "Demon Princess, Lady of Dominion, Ambition, and Self-Worship"
	desc = "Pryda is the embodiment of supremacy, the whisper in the ears of kings and the fire in the hearts of conquerors. She does not demand worship—she demands self-exaltation. To her, humility is the only sin, and all who would bow should instead rise."
	flaws = "Arrogance, Hubris, Contempt for Weakness"
	worshippers = "Tiberians, Conquerors, Duelists, Orators, the Ambitious"
	sins = "Bowing in submission, Admitting weakness, Letting an insult go unpunished"
	boons = "Pryda's majesty is above all filth—foulness and decay hold no sway over me, for such things are beneath my notice."
	added_traits = list(TRAIT_NOSTINK)
	confess_lines = list(
		"PRYDA'S LIGHT DOES NOT HUMBLE—IT GLORIFIES!",
		"TO KNEEL IS TO DIE! TO STAND IS TO RULE!",
		"THERE IS NO GREATER WORSHIP THAN THE WORSHIP OF SELF!"
	)

/datum/patron/demons/vorrak
	name = "Vorrak"
	domain = "Demon Prince, Lord of Rage, Bloodshed, and Unrelenting Fury"
	desc = "Vorrak is the storm of war, the endless fury that knows no restraint. He does not whisper—he roars. He fuels vengeance, shatters peace, and drives warriors into frenzies of slaughter. Mercy is weakness, and hesitation is death."
	flaws = "Uncontrollable Wrath, Recklessness, Bloodlust"
	worshippers = "Tiberians, Berserkers, Warriors, Gladiators, the Vengeful"
	sins = "Walking away from a fight, Showing mercy, Holding back in battle"
	boons = "Vorrak's wrath shields me—the flames hunger, yet dare not feast upon my flesh. Heat bows before rage."
	added_traits = list(TRAIT_NOFIRE)
	confess_lines = list(
		"BLOOD CALLS FOR BLOOD! LET IT FLOW!",
		"MERCY IS A LIE! STRIKE FIRST, STRIKE LAST!",
		"VORRAK'S FIRE BURNS ETERNAL—FEED IT OR BE CONSUMED!"
	)

/datum/patron/demons/zaresk
	name = "Zaresk"
	domain = "Demon Prince, Master of Avarice, Hunger, and Endless Want"
	desc = "Zaresk is the unquenchable hunger, the voice that whispers 'more' no matter how much is taken. His domain is not just wealth, but the insatiable desire for power, flesh, and indulgence. He promises abundance, but his followers find that satisfaction is forever out of reach. To worship him is to covet, to hoard, to take—without apology."
	flaws = "Insatiable Greed, Obsession, Paranoia"
	worshippers = "Tiberians, Merchants, Smugglers, Crime Lords, Hoarders, the Power-Hungry"
	sins = "Sharing without gain, Refusing a chance to profit, Wasting wealth or power"
	boons = "Zaresk's hunger knows no bounds—filth and decay are but flavors, and nothing is ever truly inedible."
	added_traits = list(TRAIT_NASTY_EATER)
	confess_lines = list(
		"MORE! ALWAYS MORE!",
		"GOLD IS POWER, POWER IS CONTROL—ZARESK DEMANDS BOTH!",
		"THE STRONG TAKE, THE WEAK SUFFER—THIS IS LAW!"
	)
