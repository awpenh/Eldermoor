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
/datum/patron/veneration/lythios
	name = "Lythios"
	domain = "Saint of Civilization, Light and Truth"
	desc = "First amongst equals, Lythios is considered to be a zealous guardian. His followers believe The One and All can be found in the act of shepherding humanity into a new age of civilisation."
	flaws = "Tyranny, Fanaticism, Unyielding Pride"
	worshippers = "Nobles, Zealots, Commoners"
	sins = "Anarchy, Deception, Defiance"
	boons = "The warmth of Lythios' light fills you, you gain stamina faster in the light."
	added_traits = list(TRAIT_APRICITY)
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/revive
	confess_lines = list(
		"LYTHIOS GUIDES CIVILIZATION!",
		"LIGHT AND TRUTH SHALL PREVAIL!",
		"I BUILD A BRIGHTER FUTURE!",
	)

/datum/patron/veneration/eosten
	name = "Eosten"
	domain = "Saint of Arcane Spells, Knowledge and The Forbidden"
	desc = "Eosten was considered a wise man compared to even the other saints. His followers are tasked with collecting and preserving all of the knowledge in the world, through which they hope to find The One and All."
	flaws = "Obsession, Arrogance, Ruthlessness"
	worshippers = "Sorcerers, Scholars and Scribes"
	sins = "Suppressing Truth, Burning Books, Censorship"
	boons = "Eosten's wisdom sharpens your mind, allowing you to learn and teach more efficiently."
	added_traits = list(TRAIT_TUTELAGE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/invisibility
	t2 = /obj/effect/proc_holder/spell/invoked/blindness
	t3 = /obj/effect/proc_holder/spell/invoked/projectile/moondagger
	confess_lines = list(
		"EOSTEN HOLDS THE SECRETS!",
		"KNOWLEDGE MUST NEVER BE LOST!",
		"I SEEK THE TRUTH, NO MATTER THE COST!",
	)

/datum/patron/veneration/patras
	name = "Patras"
	domain = "Saint of Order, Duty and Accord"
	desc = "Although Lythios now guides the church, Patras was the one to establish it when The One and All delivered a new covenant. His followers believe that the essence of divinity can be found in building consensus and obeying the common law. "
	flaws = "Rigidity, Lack of Compassion, Blind Obedience"
	worshippers = "Guards, Stewards, Vigilantes"
	sins = "Disobedience, Lawlessness, Rebellion"
	boons = "Patras' discipline grants you restful sleep, allowing you to recover stamina and mental clarity faster."
	added_traits = list(TRAIT_BETTER_SLEEP)
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	confess_lines = list(
		"PATRAS BRINGS ORDER!",
		"DUTY AND LAW ABOVE ALL!",
		"I STAND FOR JUSTICE AND UNITY!",
	)

/datum/patron/veneration/nazar
	name = "Nazar"
	domain = "Saint of Loyalty, Charity and Chastity"
	desc = "Considered to be the favoured of The One and All, Nazar was gifted with great charisma and shares this with his followers. His word dictates that courtly behaviour and a code of etiquette brings one closer to the Divine and to ones beloved."
	flaws = "Naivete, Vanity, Overattachment"
	worshippers = "Nobles, Lovers, Bards, and the Sharp-Witted"
	sins = "Rudeness, Abandonment, Unpoliteness"
	boons = "Nazar's presence sharpens your perception, making you more attuned to social cues."
	added_traits = list(TRAIT_EXTEROCEPTION)
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	confess_lines = list(
		"NAZAR TEACHES HONOR!",
		"CHARITY AND LOYALTY ARE MY CREED!",
		"I WALK THE PATH OF COURTLINESS!",
	)

/datum/patron/veneration/mikros
	name = "Mikros"
	domain = "Saint of Medicine, Alchemy and Experimentation"
	desc = "Driven by a fondness for the common man, Mikros brought new methods of caring for the sick and ailing to the world. His followers believe that The One And All lies in compassion for the suffering, using any method available."
	flaws = "Recklessness, Lack of Restraint, Overconfidence"
	worshippers = "Healers, Churchlings and Givers of Alms"
	sins = "Neglect, Hoarding, Indifference"
	boons = "Mikros' teachings make you resistant to spoiled food and rot."
	added_traits = list(TRAIT_ROT_EATER)
	t0 = /obj/effect/proc_holder/spell/invoked/diagnose
	t1 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t2 = /obj/effect/proc_holder/spell/invoked/attach_bodypart
	t3 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/cure_rot
	confess_lines = list(
		"MIKROS HEALS THE WEAK!",
		"COMPASSION IS MY CALLING!",
		"MEDICINE AND MERCY SHALL NEVER FAIL!",
	)

/datum/patron/veneration/yaakov
	name = "Yaakov"
	domain = "Saint of Creation, Nature and Abundance."
	desc = "Considered to be in some way ancient, Yaakov has a unique perspective which he shares with his followers. His teachings promote communion with and stewardship over nature as a way of finding The One and All.  "
	flaws = "Stubbornness, Isolationism, Resistance to Progress"
	worshippers = "Farmers, Hunters and Druids"
	sins = "Deforestation, Overhunting, Disrespecting Nature"
	boons = "You are immune to kneestingers."
	added_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/targeted/blesscrop
	t2 = /obj/effect/proc_holder/spell/self/beastsense
	t3 = /obj/effect/proc_holder/spell/targeted/beasttame
	confess_lines = list(
		"YAAKOV NOURISHES THE LAND!",
		"NATURE IS OUR SACRED CHARGE!",
		"I TREAD IN HARMONY WITH CREATION!",
	)

/datum/patron/veneration/julias
	name = "Julias"
	domain = "Saint of Secrecy, Wandering and Underhandedness"
	desc = "Once a mere slave beneath the cruel dominion of the dark elves, Julias rose as the leader of a great rebellion, guiding the oppressed to rise against their masters. Yet, his triumph was brief—captured, flayed, and left to die as an example, his body was broken, but his spirit endured. In death, Psydon raised him to sainthood, not as a ruler, but as a whisper in the dark, a patron of those who reject the chains of tyranny. Those who follow him do so in secret, forsaking law and order to forge their own path, free from the yoke of kings and gods alike."
	flaws = "Paranoia, Distrust, Alienation"
	worshippers = "Hands, Rebels, Rogues and Beggars"
	sins = "Submission, Conformity, Betrayal of Self"
	boons = "You can rig different forms of gambling in your favor, authority and rules are loose."
	added_traits = list(TRAIT_BLACKLEG)
	t1 = /obj/effect/proc_holder/spell/invoked/blindness
	t2 = /obj/effect/proc_holder/spell/invoked/invisibility
	confess_lines = list(
		"JULIAS WALKS IN SHADOW!",
		"SECRECY IS FREEDOM!",
		"I OWE NOTHING TO KINGS AND LAWS!",
	)

/datum/patron/veneration/cana
	name = "Cana"
	domain = "Saint of Seas, Drowning and Suffering"
	desc = "One of the Saints who dedicated themselves to preaching in foreign lands, Cana was flayed and drowned in saltwater. His followers often practice ritualistic flaying and consider flesh to hold the essence of The One and All."
	flaws = "Self-Destruction, Fanaticism, Relentless Suffering"
	worshippers = "Flaggelants, Sailors, Fishermen"
	sins = "Cowardice, Cruelty, Stagnation"
	boons = "Leeches cannot suck your blood."
	added_traits = list(TRAIT_LEECHIMMUNE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/projectile/swordfish
	t2 = /obj/effect/proc_holder/spell/self/summon_trident
	t3 = /obj/effect/proc_holder/spell/invoked/ocean_embrace
	confess_lines = list(
		"CANA SUFFERS FOR US!",
		"THE SEA CLAIMS ALL IN THE END!",
		"I EMBRACE THE TIDE OF PAIN!",
	)


/datum/patron/veneration/mathuin
	name = "Mathuin"
	domain = "Saint of Martial Prowess, Honour and Physical Perfection"
	desc = "Mathuin is said to have been in a foreign land preaching the holy word, his matyrdom came upon his refusal to besmirch a nun's vows for a lustful king. His teachings advise that The One and All can be found through the idealisation of the form."
	flaws = "Pride, Harshness, Elitism"
	worshippers = "Warriors, Knights and Paladins"
	sins = "Weakness, Cowardice, Sloth"
	boons = "Your blades dull slower."
	added_traits = list(TRAIT_SHARPER_BLADES)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/self/call_to_arms
	t2 = /obj/effect/proc_holder/spell/self/divine_strike
	t3 = /obj/effect/proc_holder/spell/invoked/persistence
	confess_lines = list(
		"MATHUIN HONORS STRENGTH!",
		"MY BODY IS A TEMPLE OF PERFECTION!",
		"I STRIVE FOR GLORY IN ALL THINGS!",
	)

/datum/patron/veneration/toma
	name = "Toma"
	domain = "Saint of Architecture, Artifice and Toil"
	desc = "A pragmatic skeptic, Toma believes in a straightforward philosophy that good things come to those who work, and work hard. His followers tend to set themselves to grand projects in hopes of finding a way to The One and All. The dwarves hold a special place of honour for Toma. "
	flaws = "Overwork, Unyielding Perfectionism, Stubborn Practicality"
	worshippers = "Smiths, Craftsmen, Brewers"
	sins = "Cheating, Shoddy Work, Suicide"
	boons = "You recover more energy when sleeping."
	added_traits = list(TRAIT_TOMAFIRE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/vigorouscraft
	t2 = /obj/effect/proc_holder/spell/invoked/hammerfall
	t3 = /obj/effect/proc_holder/spell/invoked/heatmetal
	confess_lines = list(
		"TOMA FORGES GREATNESS!",
		"LABOR IS ITS OWN REWARD!",
		"MY WORK STANDS ETERNAL!",
	)

/datum/patron/veneration/labbeus
	name = "Labbeus"
	domain = "Saint of Deals, Death and Transactions"
	desc = "A mysterious figure amongst the saints, Labbeus is no less popular for being so obfuscated. The followers of the two-faced saint tend to wear split robes to represent the divine between opulence and death. Some part of The One and All is found in the sacred death rites, typically paid for with coin."
	worshippers = "Gamblers, Morticians and Merchants"
	boons = "You can see when a soul has departed the mortal realm."
	added_traits = list(TRAIT_SOUL_EXAMINE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/targeted/burialrite
	t2 = /obj/effect/proc_holder/spell/targeted/soulspeak
	t3 = /obj/effect/proc_holder/spell/targeted/churn
	confess_lines = list(
		"LABBEUS DEALS IN LIFE AND DEATH!",
		"ALL THINGS HAVE A PRICE!",
		"I HONOR THE SACRED TRANSACTION!",
	)
