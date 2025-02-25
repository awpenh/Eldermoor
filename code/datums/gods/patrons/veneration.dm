/datum/patron/veneration
	name = null
	associated_faith = /datum/faith/veneration

/datum/patron/divine/can_pray(mob/living/follower)
	//you can pray anywhere inside a church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE

	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(!cross.obj_broken)
			return TRUE

	to_chat(follower, span_danger("I need a nearby Pantheon Cross for my prayers to be heard..."))
	return FALSE

/* ----------------- */
/datum/patron/veneration/cephas
	name = "Cephas"
	domain = "Saint of Civilization, Light and Truth"
	desc = "First amongst equals, Cephas is considered to be a zealous guardian. His followers believe The One and All can be found in the act of shepherding humanity into a new age of civilisation."
	worshippers = "Nobles, Zealots, Commoners"
	added_traits = list(TRAIT_APRICITY)
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/revive

/datum/patron/veneration/eosten
	name = "Eosten"
	domain = "Saint of Arcane Spells, Knowledge and The Forbidden"
	desc = "Eosten was considered a wise man compared to even the other saints. His followers are tasked with collecting and preserving all of the knowledge in the world, through which they hope to find The One and All."
	worshippers = "Sorcerers, Scholars and Scribes"
	sins = "Suppressing Truth, Burning Books, Censorship"
	boons = "You learn and teach apprentices slightly better."
	added_traits = list(TRAIT_TUTELAGE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/invisibility
	t2 = /obj/effect/proc_holder/spell/invoked/blindness
	t3 = /obj/effect/proc_holder/spell/invoked/projectile/moondagger

/datum/patron/veneration/patras
	name = "Patras"
	domain = "Saint of Order, Duty and Accord"
	desc = "Although Cephas now guides the church, Patras was the one to establish it when The One and All delivered a new covenant. His followers believe that the essence of divinity can be found in building consensus and obeying the common law. "
	worshippers = "Guards, Stewards, Vigilantes"
	t2 = /obj/effect/proc_holder/spell/invoked/heal

/datum/patron/veneration/nazar
	name = "Nazar"
	domain = "Saint of Loyalty, Charity and Chastity"
	desc = "Considered to be the favoured of The One and All, Nazar was gifted with great charisma and shares this with his followers. His word dictates that courtly behaviour and a code of etiquette brings one closer to the Divine."
	worshippers = "Nobles, Bards and the Sharp-Witted"
	sins = "Rudeness, Abandonment, Unpoliteness"
	added_traits = list(TRAIT_EXTEROCEPTION)
	t2 = /obj/effect/proc_holder/spell/invoked/heal

/datum/patron/veneration/mikros
	name = "Mikros"
	domain = "Saint of Medicine, Alchemy and Experimentation"
	desc = "Driven by a fondness for the common man, Mikros brought new methods of caring for the sick and ailing to the world. His followers believe that The One And All lies in compassion for the suffering, using any method available."
	worshippers = "Healers, Churchlings and Givers of Alms"
	added_traits = list(TRAIT_ROT_EATER)
	t0 = /obj/effect/proc_holder/spell/invoked/diagnose
	t1 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t2 = /obj/effect/proc_holder/spell/invoked/attach_bodypart
	t3 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/cure_rot

/datum/patron/veneration/yaakov
	name = "Ya'Akov"
	domain = "Saint of Creation, Nature and Abundance."
	desc = "Considered to be in some way ancient, Ya'akov has a unique perspective which he shares with his followers. His teachings promote communion with and stewardship over nature as a way of finding The One and All.  "
	worshippers = "Farmers, Hunters and Druids"
	sins = "Deforestation, Overhunting, Disrespecting Nature"
	boons = "You are immune to kneestingers."
	added_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/targeted/blesscrop
	t2 = /obj/effect/proc_holder/spell/self/beastsense
	t3 = /obj/effect/proc_holder/spell/targeted/beasttame

/datum/patron/veneration/julias
	name = "Julias"
	domain = "Saint of Secrecy, Wandering and Underhandedness"
	desc = "Julias is a misanthrophic recluse of a saint, obfuscated from many records. Those who claim his as Patron often do so in private, and promote the rejection of hierarchy and laws as a part of The One and All."
	worshippers = "Hands, Rogues and Beggars"
	t1 = /obj/effect/proc_holder/spell/invoked/blindness
	t2 = /obj/effect/proc_holder/spell/invoked/invisibility

/datum/patron/veneration/cana
	name = "Cana"
	domain = "Saint of Seas, Drowning and Suffering"
	desc = "One of the Saints who dedicated themselves to preaching in foreign lands, Cana was flayed and drowned in saltwater. His followers often practice ritualistic flaying and consider flesh to hold the essence of The One and All."
	worshippers = "Flaggelants, Sailors, Fishermen"
	sins = "Cowardice, Cruelty, Stagnation"
	added_traits = list(TRAIT_LEECHIMMUNE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/projectile/swordfish
	t2 = /obj/effect/proc_holder/spell/self/summon_trident
	t3 = /obj/effect/proc_holder/spell/invoked/ocean_embrace

/datum/patron/veneration/mathuin
	name = "Mathuin"
	domain = "Saint of Martial Prowess, Honour and Physical Perfection"
	desc = "Mathuin is said to have been in a foreign land preaching the holy word, his matyrdom came upon his refusal to besmirch a nun's vows for a lustful king. His teachings advise that The One and All can be found through the idealisation of the form."
	worshippers = "Warriors, Knights and Paladins"
	added_traits = list(TRAIT_SHARPER_BLADES)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/self/call_to_arms
	t2 = /obj/effect/proc_holder/spell/self/divine_strike
	t3 = /obj/effect/proc_holder/spell/invoked/persistence

/datum/patron/veneration/toma
	name = "Toma"
	domain = "Saint of Architecture, Artifice and Toil"
	desc = "A pragmatic skeptic, Toma believes in a straightforward philosophy that good things come to those who work, and work hard. His followers tend to set themselves to grand projects in hopes of finding a way to The One and All. The dwarves hold a special place of honour for Toma. "
	worshippers = "Smiths, Craftsmen, Brewers"
	sins = "Cheating, Shoddy Work, Suicide"
	boons = "You recover more energy when sleeping."
	added_traits = list(TRAIT_BETTER_SLEEP)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/vigorouscraft
	t2 = /obj/effect/proc_holder/spell/invoked/hammerfall
	t3 = /obj/effect/proc_holder/spell/invoked/heatmetal

/datum/patron/veneration/labbeus
	name = "Labbeus"
	domain = "Saint of Deals, Death and Transactions"
	desc = "A mysterious figure amongst the saints, Labbeus is no less popular for being so obfuscated. The followers of the two-faced saint tend to wear split robes to represent the divine between opulence and death. Some part of The One and All is found in the sacred death rites, typically paid for with coin."
	worshippers = "Gamblers, Morticians and Merchants"
	added_traits = list(TRAIT_SOUL_EXAMINE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/targeted/burialrite
	t2 = /obj/effect/proc_holder/spell/targeted/soulspeak
	t3 = /obj/effect/proc_holder/spell/targeted/churn
