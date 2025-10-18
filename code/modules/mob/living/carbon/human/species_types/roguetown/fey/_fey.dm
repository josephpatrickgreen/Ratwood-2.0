/*
 * Copyright (c) 2025 Jerry Goldman
 * Discord: "___.__.__.__.__.___"
 *
 * DUAL LICENSE NOTICE (AGPLv3-compliant):
 *
 * This file is made available under TWO possible licenses. You must
 * choose ONE of them. You do NOT receive both simultaneously.
 *
 * ------------------------------------------------------------------
 * 1) GNU AGPLv3 LICENSE (applies ONLY within Ratwood-Vale/Ratwood-2.0)
 * ------------------------------------------------------------------
 * When this file is used as part of the Ratwood-Vale/Ratwood-2.0
 * project, it is licensed under the GNU Affero General Public License v3.0.
 *
 * ------------------------------------------------------------------
 * 2) PROPRIETARY LICENSE (for ANY other project or repository)
 * ------------------------------------------------------------------
 * Outside of Ratwood-Vale/Ratwood-2.0, this file is NOT distributed
 * under the AGPLv3. Instead, it is provided solely under a proprietary
 * license. Explicit written permission from the copyright holder is
 * required for any use, modification, or redistribution outside of
 * the Ratwood-Vale/Ratwood-2.0 project.
 *
 * ------------------------------------------------------------------
 * WHY THIS IS AGPLv3-COMPLIANT AND NOT A "RESTRICTION"
 * ------------------------------------------------------------------
 *
 * This is a standard and fully compliant dual-licensing model used by
 * numerous open source projects (e.g. MySQL, Qt, etc.).
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
