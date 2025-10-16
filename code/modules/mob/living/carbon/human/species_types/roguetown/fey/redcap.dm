/mob/living/carbon/human/species/fey/redcap
	race = /datum/species/fey/redcap

/datum/species/fey/redcap
	name = "Redcap"
	id = "redcap"
	desc = "<b>Redcap</b><br>\
	Redcaps are a notorious, malevolent fey, infamous for their viciousness and unnerving cruelty. \
	They are small, wiry creatures with disproportionately long limbs and unyielding iron boots that they never remove. \
	Their signature blood-soaked caps are both a symbol of their violent heritage which they believe is the source of their vitae. \
	Redcaps dwell primarily in forgotten ruins and the shadowy edges of ancient forests, where they ambush travelers, hunters, and trespassers with precise and terrifying brutality. \
	These creatures are cunning strategists despite their diminutive size, often luring victims into traps or using terrain to their advantage. \
	Redcaps are deeply territorial, treating intrusions as personal affronts. Despite their chaotic nature, they possess a twisted sense of hierarchy; \
	the oldest and most bloodthirsty Redcaps command deference from younger or weaker individuals. \
	Culturally, Redcaps are obsessed with the accumulation of blood-soaked trophies and arcane relics, believing each kill strengthens their connection to the dark fey realms. \
	Their interactions with other fey are rare, often hostile, and usually violent. They are almost always solitary, forming alliances only when mutual destruction benefits them. \
	Legends tell of Redcaps storming humen outposts, razing them entirely, or silently stalking lonely roads at night to satisfy their relentless hunger for blood and chaos. \
	(+1 Speed, +1 Fortune)"

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
	race_bonus = list(STAT_SPEED = 1, STAT_FORTUNE = 1)
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
	stress_desc = span_red("Disgusting bloodling...")

/datum/species/fey/redcap/get_span_language(datum/language/message_language)
	if(!message_language)
		return
//	if(message_language.type == /datum/language/elvish)
//		return list(SPAN_SELF)
//	if(message_language.type == /datum/language/common)
//		return list(SPAN_SELF)
	return message_language.spans

/datum/species/fey/redcap/get_skin_list()
	return list(

		"Misty Hollow"			= SKIN_COLOR_MISTY_HOLLOW,
		"Ashen Moor"			= SKIN_COLOR_ASHEN_MOOR,
		"Tunnelclay"			= SKIN_COLOR_TUNNELCLAY,
		"Weeping Cliffs"		= SKIN_COLOR_WEEPING_CLIFFS,
		"Deepsand"				= SKIN_COLOR_DEEPSAND,
		"Duskshroom Corridor"	= SKIN_COLOR_DUSKSHROOM_CORRIDOR
	)

/datum/species/fey/redcap/get_hairc_list()
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

/datum/species/fey/redcap/random_name(gender,unique,lastname)

	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/fey/redcap/redcapm.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/fey/redcap/redcapf.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/fey/redcap/redcapm.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/fey/redcap/redcapf.txt") )
	return randname

/datum/species/fey/redcap/random_surname()
	return " [pick(world.file2list("strings/rt/names/fey/redcap/redcaplast.txt"))]"

/datum/species/fey/redcap/after_creation(mob/living/carbon/human/H)
	..()
	H.mind?.special_items.Add(new /obj/item/clothing/head/roguetown/feycap)

/datum/species/fey/redcap/check_roundstart_eligible()
	return TRUE
