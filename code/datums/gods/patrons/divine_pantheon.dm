/datum/patron/divine
	name = null
	associated_faith = /datum/faith/divine_pantheon
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal

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

/datum/patron/divine/astrata
	name = "Astrata"
	domain = "Goddess of Order, the Sun Queen"
	desc = "Made to enforce law and dominion, Astrata is the radiant force of order. She set the Sun in the sky, illuminating the righteous and burning away the wicked. Stern and unwavering, she ensures the world remains bound to structure and discipline."
	flaws = "Tyrannical, Ill-Tempered, Uncompromising"
	worshippers = "Nobles, Zealots, Commoners"
	sins = "Betrayal, Sloth, Witchcraft"
	boons = "Your stamina regeneration delay is lowered during daytime."
	added_traits = list(TRAIT_APRICITY)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/revive
	confess_lines = list(
		"ASTRATA IS MY LIGHT!",
		"ASTRATA BRINGS LAW!",
		"I SERVE THE GLORY OF THE SUN!",
	)

/datum/patron/divine/noc
	name = "Noc"
	domain = "God of Knowledge, the Moon Prince"
	desc = "Made to be the keeper of wisdom and unseen truths, Noc is the silent observer of all things hidden. He hung the Moon in the sky as a guide for those who seek knowledge in the dark. He grants insight to those who pursue it, though he cares little for how they wield it."
	flaws = "Cynical, Isolationist, Unfiltered Honesty"
	worshippers = "Magic Practitioners, Scholars, Scribes"
	sins = "Suppressing Truth, Burning Books, Censorship"
	boons = "You learn and teach apprentices slightly better."
	added_traits = list(TRAIT_TUTELAGE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/invisibility
	t2 = /obj/effect/proc_holder/spell/invoked/blindness
	t3 = /obj/effect/proc_holder/spell/invoked/projectile/moondagger
	confess_lines = list(
		"NOC IS NIGHT!",
		"NOC SEES THE TRUTH!",
		"I SEEK THE MYSTERIES OF THE MOON!",
	)

/datum/patron/divine/dendor
	name = "Dendor"
	domain = "God of Nature and Beasts"
	desc = "Made to shape the land and govern all living things, Dendor was once the guardian of balance. But as mortals carved cities into the wilderness, his domain withered. Now, driven mad by time, he seeks to tear down civilization and restore the world to its primal state."
	flaws = "Madness, Rebelliousness, Disorderliness"
	worshippers = "Druids, Beasts, Madmen"
	sins = "Deforestation, Overhunting, Disrespecting Nature"
	boons = "You are immune to kneestingers."
	added_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/targeted/blesscrop
	t2 = /obj/effect/proc_holder/spell/self/beastsense
	t3 = /obj/effect/proc_holder/spell/targeted/beasttame
	confess_lines = list(
		"DENDOR PROVIDES!",
		"THE TREEFATHER BRINGS BOUNTY!",
		"I ANSWER THE CALL OF THE WILD!",
	)

/datum/patron/divine/abyssor
	name = "Abyssor"
	domain = "God of Seas and Storms"
	desc = "Made to command the waters, Abyssor is the sovereign of the sea, both its bounty and its wrath. He shaped the great tides and the horrors of the deep, and for a time, all feared him. But as mortals turned from him, he grew bitter, his storms now driven by anger at being forgotten."
	flaws= "Reckless, Stubborn, Destructive"
	worshippers = "Sailors of the Sea and Sky, Horrid Sea-Creachers, Fog Islanders"
	sins = "Fear, Hubris, Forgetfulness"
	boons = "Leeches will drain very little of your blood."
	added_traits = list(TRAIT_LEECHIMMUNE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/projectile/swordfish
	t2 = /obj/effect/proc_holder/spell/self/summon_trident
	t3 = /obj/effect/proc_holder/spell/invoked/ocean_embrace
	confess_lines = list(
		"ABYSSOR COMMANDS THE WAVES!",
		"THE OCEAN'S FURY IS ABYSSOR'S WILL!",
		"I AM DRAWN BY THE PULL OF THE TIDE!",
	)

/datum/patron/divine/necra
	name = "Necra"
	domain = "Goddess of Death and Decay"
	desc = "Made to shepherd the dead, Necra does not see death as an end, but as a necessity. She tends the underworld with neither malice nor mercy, ensuring that all souls find their rightful place. Where others mourn, she remains impassive—for all things must eventually serve their purpose beyond life."
	flaws = "Unchanging, Apathetic, Easy to Bore"
	worshippers = "Orderlies, Gravetenders, Mourners"
	sins = "Heretical Magic, Untimely Death, Disturbance of Rest"
	boons = "You may see the presence of a soul in a body."
	added_traits = list(TRAIT_SOUL_EXAMINE)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/targeted/burialrite
	t2 = /obj/effect/proc_holder/spell/targeted/soulspeak
	t3 = /obj/effect/proc_holder/spell/targeted/churn
	confess_lines = list(
		"ALL SOULS FIND THEIR WAY TO NECRA!",
		"THE UNDERMAIDEN IS OUR FINAL REPOSE!",
		"I FEAR NOT DEATH, MY LADY AWAITS ME!",
	)

/datum/patron/divine/ravox
	name = "Ravox"
	domain = "God of Warfare, Justice, and Bravery"
	desc = "Made to embody righteous battle, Ravox is the force of war given purpose. He does not fight for conquest, but for justice—for the struggle itself. He blesses those who fight with honor and strikes down those who raise their blades in cruelty."
	flaws = "Carelessness, Aggression, Pride"
	worshippers = "Warriors, Sellswords, Guardsmen"
	sins = "Cowardice, Cruelty, Stagnation"
	boons = "Your used weapons dull slower."
	added_traits = list(TRAIT_SHARPER_BLADES)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/self/call_to_arms
	t2 = /obj/effect/proc_holder/spell/self/divine_strike
	t3 = /obj/effect/proc_holder/spell/invoked/persistence
	confess_lines = list(
		"RAVOX IS JUSTICE!",
		"THROUGH STRIFE, GRACE!",
		"THE DRUMS OF WAR BEAT IN MY CHEST!",
	)

/datum/patron/divine/xylix
	name = "Xylix"
	domain = "Diety of Trickery, Freedom, and Inspiration"
	desc = "Unlike the others, Xylix was not made but **ascended**—once a dark elf, now a god. They embody change, deception, and rebellion, weaving chaos where others seek control. No truth is sacred, no rule unbreakable, for Xylix believes the world should be an ever-changing stage."
	flaws = "Petulance, Deception, Gambling-Prone"
	worshippers = "Cheats, Performers, The Hopeless"
	sins = "Boredom, Predictability, Routine"
	boons = "You can rig different forms of gambling in your favor."
	added_traits = list(TRAIT_BLACKLEG)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/vicious_mimicry
	t2 = /obj/effect/proc_holder/spell/invoked/wheel
	confess_lines = list(
		"ASTRATA IS MY LIGHT!",
		"NOC IS NIGHT!",
		"DENDOR PROVIDES!",
		"ABYSSOR COMMANDS THE WAVES!",
		"RAVOX IS JUSTICE!",
		"ALL SOULS FIND THEIR WAY TO NECRA!",
		"HAHAHAHA! AHAHAHA! HAHAHAHA!", //the only xylix-related confession
		"PESTRA SOOTHES ALL ILLS!",
		"MALUM IS MY FORGE!",
		"EORA BRINGS US TOGETHER!",
	)

/datum/patron/divine/pestra
	name = "Pestra"
	domain = "Goddess of Disease, Alchemy, and Medicine"
	desc = "Made to oversee the cycle of life and decay, Pestra weaves sickness and healing in equal measure. She cares little for mortal suffering—only that the balance remains. Those who understand this truth find her gifts of alchemy and medicine, while those who resist it fall to her plagues."
	flaws = "Drunkenness, Crudeness, Irresponsibility"
	worshippers = "The Ill and Infirm, Alchemists, Physicians"
	sins = "´Curing´ Abnormalities, Refusing to Help Unfortunates, Groveling"
	boons = "You may consume rotten food without being sick."
	added_traits = list(TRAIT_ROT_EATER)
	t0 = /obj/effect/proc_holder/spell/invoked/diagnose
	t1 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t2 = /obj/effect/proc_holder/spell/invoked/attach_bodypart
	t3 = /obj/effect/proc_holder/spell/invoked/cure_rot
	confess_lines = list(
		"PESTRA SOOTHES ALL ILLS!",
		"DECAY IS A CONTINUATION OF LIFE!",
		"MY AFFLICTION IS MY TESTAMENT!",
	)

/datum/patron/divine/malum
	name = "Malum"
	domain = "God of Toil, Innovation, and Creation"
	desc = "Made to be the god of labor and craftsmanship, Malum values those who build and shape the world. He rewards those who work tirelessly and punishes those who take shortcuts, ensuring that only through effort does true creation emerge."
	flaws = "Obsessive, Exacting, Overbearing"
	worshippers = "Smiths, Miners, Sculptors"
	sins = "Cheating, Shoddy Work, Suicide"
	boons = "You recover more energy when sleeping."
	added_traits = list(TRAIT_BETTER_SLEEP)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/vigorouscraft
	t2 = /obj/effect/proc_holder/spell/invoked/hammerfall
	t3 = /obj/effect/proc_holder/spell/invoked/heatmetal
	confess_lines = list(
		"MALUM IS MY FORGE!",
		"TRUE VALUE IS IN THE TOIL!",
		"I AM AN INSTRUMENT OF CREATION!",
	)

/datum/patron/divine/eora
	name = "Eora"
	domain = "Goddess of Love, Family, and Art"
	desc = "Made with Psydon's heart, Eora was shaped to embody love, kindness, and the bonds that hold the world together. She fosters connection and inspires beauty, believing in the goodness of all things, even when that belief is tested. Though her kindness has been betrayed before, she refuses to abandon love—for without it, life itself is hollow."
	flaws= "Naivete, Impulsiveness, Ignorance"
	worshippers = "Mothers, Artists, Married Couples"
	sins = "Sadism, Abandonment, Ruining Beauty"
	boons = "You can understand others' needs better."
	added_traits = list(TRAIT_EXTEROCEPTION)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/instill_perfection
	t2 = /obj/effect/proc_holder/spell/invoked/projectile/eoracurse
	t3 = /obj/effect/proc_holder/spell/invoked/bud
	confess_lines = list(
		"EORA BRINGS US TOGETHER!",
		"HER BEAUTY IS EVEN IN THIS TORMENT!",
		"I LOVE YOU, EVEN AS YOU TRESPASS AGAINST ME!",
	)
