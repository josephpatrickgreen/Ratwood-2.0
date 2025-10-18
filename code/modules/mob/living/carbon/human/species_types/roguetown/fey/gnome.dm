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

/mob/living/carbon/human/species/fey/gnome
	race = /datum/species/fey/gnome

/datum/species/fey/gnome
	name = "Gnome"
	id = "gnome"
	desc = "<b>Gnome</b><br>\
	Gnomes are a despised and distrusted offshoot of the fey, known for their venomous wit and cruel sense of humor. \
	Once kin to the elves, they were cast out from the higher courts of the fey for their obsession with deception, \
	petty deeds, and the corruption of mortal minds. In the centuries since, they have become twisted, \
	molding themselves into creatures of spite and trickery. \
	They dwell in tangled roots, damp burrows, and half-collapsed ruins where they whisper curses. \
	Gnomes take pride in sowing chaos among mortals—turning neighbor against neighbor, warping dreams, \
	and preying upon the weak-willed. \
	Their laughter is said to drive men mad, and their bargains always end in loss. \
	Though physically unimposing, they possess a cunning beyond reckoning and wield magic and deceit as naturally as breathing. \
	Among the the sentient, they are tolerated for their utility, but never trusted; \
	to strike a deal with a gnome is to court ones own undoing. \
	(+1 Fortune, -1 Constitution, -1 Willpower, Arcane T1 Trait (T2 if Arcyne Potential))"
	expanded_desc = "Gnomes were first shaped by Xylix, the Trickster, from the echoes of elven laughter and pure joy — small folk meant to amuse and inspire the greater folk. \
	But the spark that gave them wit burned too fiercely; they grew restless under their creators light, delighting in mischief that soured into malice. \
	When their pranks turned cruel and their illusions began to twist the minds of mortals, polite society cast them out, banishing them to the shallow warrens between root and stone. \
	There, in the dim humus of forgotten groves, they festered — no longer creators of joy, but of mockery. \
	They learned to weave jests as deftly as blades, to turn truth into poison and laughter into a weapon. \
	In their exile they came to worship their own cleverness, believing deceit itself to be the highest form of art. \
	Xylix mourned their fall, yet would not unmake them, for even ruin has its place in the great design. \
	Among the mortal folk, gnomes now skulk as tricksters, charmers, and whispering tempters — never fully trusted, yet never fully shunned, for their cunning remains a potent, perilous gift."


	skin_tone_wording = "Burrow"

	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,OLDGREY)
	
	default_features = MANDATORY_FEATURE_LIST
	use_skintones = 1
	disliked_food = NONE
	liked_food = NONE
	possible_ages = ALL_AGES_LIST
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | RACE_SWAP | SLIME_EXTRACT	

	limbs_icon_m = 'icons/mob/species/anthro_small_malea.dmi'
	limbs_icon_f = 'icons/mob/species/anthro_small_femalea.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	use_f = TRUE
	custom_clothes = TRUE

	clothes_id = "dwarf"
	soundpack_m = /datum/voicepack/male/elf
	soundpack_f = /datum/voicepack/female/elf

	offset_features = list(
		OFFSET_ID = list(0,-4), OFFSET_GLOVES = list(0,-4), OFFSET_WRISTS = list(0,-4),\
		OFFSET_CLOAK = list(0,0), OFFSET_FACEMASK = list(0,-5), OFFSET_HEAD = list(0,-4), \
		OFFSET_FACE = list(0,-5), OFFSET_BELT = list(0,-4), OFFSET_BACK = list(0,-4), \
		OFFSET_NECK = list(0,-4), OFFSET_MOUTH = list(0,-4), OFFSET_PANTS = list(0,0), \
		OFFSET_SHIRT = list(0,0), OFFSET_ARMOR = list(0,0), OFFSET_HANDS = list(0,-3), OFFSET_UNDIES = list(0,-4), \
		OFFSET_ID_F = list(0,-5), OFFSET_GLOVES_F = list(0,-4), OFFSET_WRISTS_F = list(0,-4), OFFSET_HANDS_F = list(0,-4), \
		OFFSET_CLOAK_F = list(0,0), OFFSET_FACEMASK_F = list(0,-5), OFFSET_HEAD_F = list(0,-5), \
		OFFSET_FACE_F = list(0,-5), OFFSET_BELT_F = list(0,-4), OFFSET_BACK_F = list(0,-5), \
		OFFSET_NECK_F = list(0,-5), OFFSET_MOUTH_F = list(0,-5), OFFSET_PANTS_F = list(0,0), \
		OFFSET_SHIRT_F = list(0,0), OFFSET_ARMOR_F = list(0,0), OFFSET_UNDIES_F = list(0,-4), \
		)
	//inherent_traits = list(TRAIT_WOODWALKER)
	race_bonus = list(STAT_FORTUNE = 1, STAT_CONSTITUTION = -1, STAT_WILLPOWER = -1)
	enflamed_icon = "widefire"
	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes/elf,
		ORGAN_SLOT_EARS = /obj/item/organ/ears/elfw,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue/wild_tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		)
	bodypart_features = list(
		/datum/bodypart_feature/hair/head,
		/datum/bodypart_feature/hair/facial,
	)
	customizers = list(
		/datum/customizer/organ/eyes/humanoid,
		/datum/customizer/bodypart_feature/hair/head/humanoid,
		/datum/customizer/bodypart_feature/hair/facial/humanoid,
		/datum/customizer/bodypart_feature/accessory,
		/datum/customizer/bodypart_feature/face_detail,
		/datum/customizer/bodypart_feature/underwear,
		/datum/customizer/bodypart_feature/legwear,
		/datum/customizer/organ/ears/elf,
		/datum/customizer/organ/testicles/anthro,
		/datum/customizer/organ/penis/anthro,
		/datum/customizer/organ/breasts/human,
		/datum/customizer/organ/vagina/human_anthro,
		)

	body_marking_sets = list(
		/datum/body_marking_set/none
	)

	body_markings = list(
		/datum/body_marking/flushed_cheeks,
		/datum/body_marking/eyeliner,
		/datum/body_marking/small/nose,
		/datum/body_marking/small/bangs,
		/datum/body_marking/small/bun,
	)

	stress_examine = TRUE
	stress_desc = span_red("Treacherous redcap...")

/datum/species/fey/gnome/get_span_language(datum/language/message_language)
	if(!message_language)
		return
//	if(message_language.type == /datum/language/elvish)
//		return list(SPAN_SELF)
//	if(message_language.type == /datum/language/common)
//		return list(SPAN_SELF)
	return message_language.spans

/datum/species/fey/gnome/get_skin_list()
	return list(
		"Moonquartz"		= SKIN_COLOR_MOONQUARTZ,
		"Silverbark"		= SKIN_COLOR_SILVERBARK,
		"Pebblebrook"		= SKIN_COLOR_PEBBLEBROOK,
		"Honeyslate"		= SKIN_COLOR_HONEYSLATE,
		"Dampclay"			= SKIN_COLOR_DAMPCLAY,
		"Sandroot"			= SKIN_COLOR_SANDROOT,
		"Stoneburr"			= SKIN_COLOR_STONEBURR,
		"Ironmoss"			= SKIN_COLOR_IRONMOSS,
		"Ocherdeep"			= SKIN_COLOR_OCHERDEEP,
		"Shaleheart"		= SKIN_COLOR_SHALEHEART,
		"Smokeforge"		= SKIN_COLOR_SMOKEFORGE,
		"Dustcap Hill"		= SKIN_COLOR_DUSTCAP_HILL
	)

/datum/species/fey/gnome/get_hairc_list()
	return sortList(list(
	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b",

	"blond - pale" = "9d8d6e",
	"blond - dirty" = "88754f",
	"blond - drywheat" = "d5ba7b",
	"blond - strawberry" = "c69b71",

	"white - snow" = "dee9ed",
	"white - ice" = "f4f4f4",

	"brown - mud" = "362e25",
	"brown - oats" = "584a3b",
	"brown - grain" = "58433b",
	"brown - soil" = "48322a",

	"red - berry" = "48322a",
	"red - wine" = "82534c",
	"red - sunset" = "82462b",
	"red - blood" = "822b2b",

	"green - grass" = "2a482c",
	"green - swamp" = "3b482a",
	"green - leaf" = "2f3c2e",
	"green - moss" = "3b3c2a"

	))

/datum/species/fey/gnome/random_name(gender,unique,lastname)

	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/fey/gnome/gnomem.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/fey/gnome/gnomef.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/fey/gnome/gnomem.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/fey/gnome/gnomef.txt") )
	return randname

/datum/species/fey/gnome/random_surname()
	return " [pick(world.file2list("strings/rt/names/fey/gnome/gnomelast.txt"))]"

/datum/species/fey/gnome/after_creation(mob/living/carbon/human/H)
	..()
	H.mind?.special_items.Add(/obj/item/clothing/head/roguetown/feycap)
	H.mind?.adjust_spellpoints(2)
	ADD_TRAIT(H, TRAIT_ARCYNE_T1, TRAIT_GENERIC)

/datum/species/fey/gnome/check_roundstart_eligible()
	return TRUE
