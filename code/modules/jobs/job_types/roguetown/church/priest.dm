
/datum/job/roguetown/priest
	title = "Priest"
	flag = PRIEST
	department_flag = CHURCHMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	f_title = "Priest"
	allowed_races = list("Humen")
	allowed_sexes = list(MALE)
	tutorial = "You are a devoted follower of Psydon and the Eleven Saints, the pillars of divine order. In a world consumed by immorality, only their guidance can lead the faithful to salvation. Psydon reigns supreme, with the saints as his chosen intercessors, each embodying a path to righteousness. It is your duty to preach their wisdom to Eldermoor and shepherd the flock toward a future devoted to the One and All."
	whitelist_req = FALSE
	bypass_lastclass = TRUE
	outfit = /datum/outfit/job/roguetown/priest

	display_order = JDO_PRIEST
	give_bank_account = 115
	cmode_music = 'sound/music/cmode/church/CombatAstrata.ogg'
	min_pq = 0
	selection_color = "#c2a45d"
	spells = list(
		/obj/effect/proc_holder/spell/self/convertrole/templar,
		/obj/effect/proc_holder/spell/self/convertrole/monk,
		/obj/effect/proc_holder/spell/self/convertrole/churchling,
	)

/datum/outfit/job/roguetown/priest/pre_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE
	H.verbs |= /mob/living/carbon/human/proc/coronate_lord
	H.verbs |= /mob/living/carbon/human/proc/churchexcommunicate
	H.verbs |= /mob/living/carbon/human/proc/churchcurse
	H.verbs |= /mob/living/carbon/human/proc/churchannouncement
	neck = /obj/item/clothing/neck/roguetown/psycross/silver
	head = /obj/item/clothing/head/roguetown/roguehood/priest
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/priest
	pants = /obj/item/clothing/under/roguetown/tights/black
	wrists = /obj/item/clothing/wrists/roguetown/wrappings
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	beltl = /obj/item/storage/keyring/priest
	belt = /obj/item/storage/belt/rogue/leather/rope
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/priest
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/needle = 1, /obj/item/storage/belt/rogue/pouch/coins/rich = 1 )

	var/obj/item/rogueweapon/polearm/woodstaff/aries/P = new()
	H.put_in_hands(P, forced = TRUE)


	if(H.mind)
		if(H.patron != /datum/patron/psydon) // For some stupid reason this was checking for Yaakov before.
			H.set_patron(/datum/patron/psydon)

		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 5, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/magic/holy, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE) // Privilege of being the SECOND biggest target in the game, and arguably the worse of the two targets to lose
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		if(H.age == AGE_OLD)
			H.mind?.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			H.mind?.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.change_stat("strength", 1) // One slot and a VERY important role, it deserves a half-decent statline
		H.change_stat("intelligence", 2)
		H.change_stat("endurance", 2)
		H.change_stat("speed", 1)
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron) // This creates the cleric holder used for devotion spells
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
	C.grant_spells_priest(H)

	H.update_icons()

/datum/job/roguetown/expriest //just used to change the priest title
	title = "Ex-Priest"
	f_title = "Ex-Priestess"
	flag = PRIEST
	department_flag = CHURCHMEN
	faction = "Station"
	total_positions = 0
	spawn_positions = 0
	display_order = JDO_PRIEST

/mob/living/carbon/human/proc/coronate_lord()
	set name = "Coronate"
	set category = "Priest"
	if(!mind)
		return
	if(!istype(get_area(src), /area/rogue/indoors/town/church/chapel))
		to_chat(src, "<span class='warning'>I need to do this in the chapel.</span>")
		return FALSE
	for(var/mob/living/carbon/human/HU in get_step(src, src.dir))
		if(!HU.mind)
			continue
		if(HU.mind.assigned_role == "King")
			continue
		if(!HU.head)
			continue
		if(!istype(HU.head, /obj/item/clothing/head/roguetown/crown/serpcrown))
			continue
		for(var/mob/living/carbon/human/HL in GLOB.human_list)
			if(HL.mind)
				if(HL.mind.assigned_role == "King" || HL.mind.assigned_role == "Consort")
					HL.mind.assigned_role = "Towner" //So they don't get the innate traits of the king
			//would be better to change their title directly, but that's not possible since the title comes from the job datum
			if(HL.job == "King")
				HL.job = "Ex-King"
				var/datum/job/J = SSjob.GetJobType(/datum/job/roguetown/lord)
				J?.remove_spells(HL)
			if(HL.job == "Consort")
				HL.job = "Ex-Consort"
				var/datum/job/J = SSjob.GetJobType(/datum/job/roguetown/consort)
				J?.remove_spells(HL)
		switch(HU.gender)
			if("male")
				HU.mind.assigned_role = "King"
				HU.job = "King"
			if("female")
				HU.mind.assigned_role = "King"
				HU.job = "King"
		var/datum/job/J = SSjob.GetJobType(/datum/job/roguetown/lord)
		J?.add_spells(HU)
		SSticker.rulermob = HU
		GLOB.badomens -= OMEN_NOLORD
		say("By the authority of the gods, I pronounce you Ruler of all Vanderlin!")
		priority_announce("[real_name] the [get_role_title()] has named [HU.real_name] the inheritor of Vanderlin!", title = "Long Live [HU.real_name]!", sound = 'sound/misc/bell.ogg')
		return

/mob/living/carbon/human/proc/churchexcommunicate()
	set name = "Excommunicate"
	set category = "Priest"
	if(stat)
		return
	var/inputty = input("Excommunicate someone, cutting off their connection to the Saints and Psydon. (excommunicate them again to remove it)", "Sinner Name") as text|null
	if(inputty)
		if(!istype(get_area(src), /area/rogue/indoors/town/church/chapel))
			to_chat(src, span_warning("I need to do this from the chapel."))
			return FALSE
		if(inputty in GLOB.excommunicated_players)
			GLOB.excommunicated_players -= inputty
			priority_announce("[real_name] has forgiven [inputty]. The Saints hear their prayers once more!", title = "Hail the Saints!", sound = 'sound/misc/bell.ogg')
			for(var/mob/living/carbon/human/H in GLOB.player_list)
				if(H.real_name == inputty)
					H.cleric?.recommunicate()
			return
		var/found = FALSE
		for(var/mob/living/carbon/human/H in GLOB.player_list)
			if(H.real_name == inputty)
				found = TRUE
				H.cleric?.excommunicate()
		if(!found)
			return FALSE

		GLOB.excommunicated_players += inputty
		priority_announce("[real_name] has excommunicated [inputty]! The Saints have turned away from them!", title = "SHAME", sound = 'sound/misc/excomm.ogg')

/mob/living/carbon/human/proc/churchcurse()
	set name = "Curse"
	set category = "Priest"
	if(stat)
		return
	var/inputty = input("Curse someone as a heretic. (curse them again to remove it)", "Sinner Name") as text|null
	if(inputty)
		if(!istype(get_area(src), /area/rogue/indoors/town/church/chapel))
			to_chat(src, "<span class='warning'>I need to do this from the chapel.</span>")
			return FALSE
		if(inputty in GLOB.heretical_players)
			GLOB.heretical_players -= inputty
			priority_announce("[real_name] has forgiven [inputty]. Once more walk in the light!", title = "Hail the Saints!", sound = 'sound/misc/bell.ogg')
			for(var/mob/living/carbon/H in GLOB.player_list)
				if(H.real_name == inputty)
					H.remove_stress(/datum/stressevent/psycurse)
			return
		var/found = FALSE
		for(var/mob/living/carbon/H in GLOB.player_list)
			if(H.real_name == inputty)
				found = TRUE
				H.add_stress(/datum/stressevent/psycurse)
		if(!found)
			return FALSE
		GLOB.heretical_players += inputty
		priority_announce("[real_name] has put Julius' curse of woe on [inputty] for offending the church!", title = "SHAME", sound = 'sound/misc/excomm.ogg')

/mob/living/carbon/human/proc/churchannouncement()
	set name = "Announcement"
	set category = "Priest"
	if(stat)
		return
	var/inputty = input("Make an announcement", "VANDERLIN") as text|null
	if(inputty)
		if(!istype(get_area(src), /area/rogue/indoors/town/church/chapel))
			to_chat(src, "<span class='warning'>I need to do this from the chapel.</span>")
			return FALSE
		priority_announce("[inputty]", title = "The [get_role_title()] Speaks", sound = 'sound/misc/bell.ogg')
		src.log_talk("[TIMETOTEXT4LOGS] [inputty]", LOG_SAY, tag="Priest announcement")

/obj/effect/proc_holder/spell/self/convertrole/templar
	name = "Recruit Templar"
	new_role = "Templar"
	overlay_state = "recruit_templar"
	recruitment_faction = "Church"
	recruitment_message = "Serve the Saints and Psydon, %RECRUIT!"
	accept_message = "FOR THE SAINTS AND PSYDON!"
	refuse_message = "I refuse."

/obj/effect/proc_holder/spell/self/convertrole/templar/convert(mob/living/carbon/human/recruit, mob/living/carbon/human/recruiter)
	. = ..()
	if(!.)
		return
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(recruit, recruit.patron)
	C.grant_spells_templar(recruit)
	recruit.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)

/obj/effect/proc_holder/spell/self/convertrole/monk
	name = "Recruit Acolyte"
	new_role = "Acolyte"
	overlay_state = "recruit_acolyte"
	recruitment_faction = "Church"
	recruitment_message = "Serve the Saints and Psydon, %RECRUIT!"
	accept_message = "FOR THE SAINTS OF PSYDON!"
	refuse_message = "I refuse."

/obj/effect/proc_holder/spell/self/convertrole/monk/convert(mob/living/carbon/human/recruit, mob/living/carbon/human/recruiter)
	. = ..()
	if(!.)
		return
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(recruit, recruit.patron)
	C.grant_spells(recruit)
	recruit.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)

/obj/effect/proc_holder/spell/self/convertrole/churchling
	name = "Recruit Churchling"
	new_role = "Churchling"
	overlay_state = "recruit_acolyte"
	recruitment_faction = "Church"
	recruitment_message = "Serve the Saints, %RECRUIT!"
	accept_message = "FOR THE SAINTS OF PSYDON!"
	refuse_message = "I refuse."

/obj/effect/proc_holder/spell/self/convertrole/churchling/can_convert(mob/living/carbon/human/recruit)
	//wtf
	if(QDELETED(recruit))
		return FALSE
	//need a mind
	if(!recruit.mind)
		return FALSE
	//only orphans who aren't apprentices
	if(recruit.job == "Orphan" && !recruit.mind.apprentice)
		return FALSE
	//need to see their damn face
	if(!recruit.get_face_name(null))
		return FALSE
	return TRUE

/obj/effect/proc_holder/spell/self/convertrole/churchling/convert(mob/living/carbon/human/recruit, mob/living/carbon/human/recruiter)
	. = ..()
	if(!.)
		return
	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(recruit, recruit.patron)
	C.grant_spells_churchling(recruit)
	recruit.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
