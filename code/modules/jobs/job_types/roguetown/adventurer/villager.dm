
/datum/job/roguetown/villager
	title = "Towner"
	flag = ADVENTURER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 0
	spawn_positions = 0
	allowed_races = ALL_PLAYER_RACES_BY_NAME
	tutorial = "You've spent your life in this backwater, watching the world slowly claw its way out of ruin. You're no great explorer, nor a warrior of legend—just another poor soul trying to make something of yourself in a world that, for once, seems to be getting better."
	advclass_cat_rolls = list(CTAG_TOWNER = 20)
	outfit = null
	outfit_female = null
	banned_leprosy = FALSE
	give_bank_account = TRUE
	min_pq = -100
	same_job_respawn_delay = 0
	bypass_lastclass = TRUE



/datum/job/roguetown/villager/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(L)
		var/mob/living/carbon/human/H = L
		H.advsetup = 1
		H.invisibility = INVISIBILITY_MAXIMUM
		H.become_blind("advsetup")

/datum/job/roguetown/villager/New()
	. = ..()
	for(var/X in GLOB.peasant_positions)
		peopleiknow += X
		peopleknowme += X
	for(var/X in GLOB.serf_positions)
		peopleiknow += X
	for(var/X in GLOB.church_positions)
		peopleiknow += X
	for(var/X in GLOB.garrison_positions)
		peopleiknow += X
	for(var/X in GLOB.noble_positions)
		peopleiknow += X
