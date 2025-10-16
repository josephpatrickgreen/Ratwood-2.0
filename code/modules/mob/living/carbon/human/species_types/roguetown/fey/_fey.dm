/*
 * Copyright (c) 2025 Jerry Goldman
 * discord user "___.__.__.__.__.___"
 *
 * Licensed under a custom license for use exclusively within the Ratwood-Vale/Ratwood-2.0 project.
 * Redistribution, reuse, or modification of this file outside the Ratwood-Vale/Ratwood-2.0 repository
 * (https://github.com/Rotwood-Vale/Ratwood-2.0) is prohibited without explicit permission.
 *
 * Within the Ratwood-Vale/Ratwood-2.0 repository, this file is governed by the GNU General Public License v3.0.
 * GPL compliance is fully acknowledged only within the Ratwood-Vale/Ratwood-2.0 repository.
 */

/mob/living/carbon/human/species/fey
	race = /datum/species/fey

/datum/species/fey
	name = "fey"
	id = "fey"
	max_age = 350
	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes/elf,
		ORGAN_SLOT_EARS = /obj/item/organ/ears,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue/wild_tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		)
	languages = list(
		/datum/language/common,
		/datum/language/elvish
	)

/datum/species/fey/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	RegisterSignal(C, COMSIG_MOB_SAY, PROC_REF(handle_speech))

/datum/species/fey/after_creation(mob/living/carbon/C)
	..()
	to_chat(C, "<span class='info'>I can speak Elfish with ,e before my speech.</span>")

/datum/species/fey/on_species_loss(mob/living/carbon/C)
	. = ..()
	UnregisterSignal(C, COMSIG_MOB_SAY)

/datum/species/fey/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/fey/get_skin_list()
	return sortList(list(
	"skin1" = "ffe0d1",
	"skin2" = "fcccb3"
	))

/datum/species/fey/get_hairc_list()
	return sortList(list(
	"black - nightsky" = "0a0707",
	"brown - treebark" = "362e25",
	"blonde - moonlight" = "dfc999",
	"red - autumn" = "a34332"
	))
