/*
 * Class DATE_MEASUREMENT
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_880 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_880 [] = {0xFF11,236,0xFF12,879,0xFFFF};
static EIF_TYPE_INDEX gen_type2_880 [] = {0xFF11,879,0xFFFF};
static EIF_TYPE_INDEX gen_type3_880 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_880 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_880 [] = {0xFF11,879,0xFFFF};
static EIF_TYPE_INDEX gen_type6_880 [] = {0xFF11,879,0xFFFF};
static EIF_TYPE_INDEX gen_type7_880 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_880 [] = {0xFF11,13,0xFFFF};
static EIF_TYPE_INDEX gen_type9_880 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_880 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_880 [] = {0xFF11,14,0xFFFF};
static EIF_TYPE_INDEX gen_type12_880 [] = {0xFF11,879,0xFFFF};
static EIF_TYPE_INDEX gen_type13_880 [] = {0xFF11,868,0xFFFF};
static EIF_TYPE_INDEX gen_type14_880 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type15_880 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type16_880 [] = {0xFF11,249,0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type17_880 [] = {0xFF11,249,0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type18_880 [] = {0xFF11,249,0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type19_880 [] = {0xFF11,249,0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type20_880 [] = {0xFF11,296,205,0xFFFF};


static struct desc_info desc_880[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_880},
	{1, (BODY_INDEX)-1, 236, gen_type1_880},
	{2, (BODY_INDEX)-1, 190, NULL},
	{3, (BODY_INDEX)-1, 190, NULL},
	{4, (BODY_INDEX)-1, 190, NULL},
	{5, (BODY_INDEX)-1, 190, NULL},
	{6, (BODY_INDEX)-1, 190, NULL},
	{7, (BODY_INDEX)-1, 190, NULL},
	{8, (BODY_INDEX)-1, 190, NULL},
	{9, (BODY_INDEX)-1, 190, NULL},
	{10, (BODY_INDEX)-1, 879, gen_type2_880},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_880},
	{14, (BODY_INDEX)-1, 0, gen_type4_880},
	{15, (BODY_INDEX)-1, 879, gen_type5_880},
	{16, (BODY_INDEX)-1, 879, gen_type6_880},
	{17, (BODY_INDEX)-1, 0, gen_type7_880},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, gen_type8_880},
	{21, (BODY_INDEX)-1, 219, gen_type9_880},
	{22, (BODY_INDEX)-1, 219, gen_type10_880},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, gen_type11_880},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 879, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 879, gen_type12_880},
	{12732, (BODY_INDEX)-1, 205, NULL},
	{12729, (BODY_INDEX)-1, 205, NULL},
	{12730, (BODY_INDEX)-1, 868, gen_type13_880},
	{12731, (BODY_INDEX)-1, 219, gen_type14_880},
	{12758, (BODY_INDEX)-1, 205, NULL},
	{12759, (BODY_INDEX)-1, 205, NULL},
	{12760, (BODY_INDEX)-1, 205, NULL},
	{12761, (BODY_INDEX)-1, 205, NULL},
	{12762, (BODY_INDEX)-1, 205, NULL},
	{12763, (BODY_INDEX)-1, 205, NULL},
	{12764, (BODY_INDEX)-1, 219, gen_type15_880},
	{12765, (BODY_INDEX)-1, 249, gen_type16_880},
	{12766, (BODY_INDEX)-1, 249, gen_type17_880},
	{12767, (BODY_INDEX)-1, 249, gen_type18_880},
	{12768, (BODY_INDEX)-1, 249, gen_type19_880},
	{12769, (BODY_INDEX)-1, 190, NULL},
	{12770, (BODY_INDEX)-1, 190, NULL},
	{12771, (BODY_INDEX)-1, 296, gen_type20_880},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 205, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 205, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 205, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12783, (BODY_INDEX)-1, 205, NULL},
};

extern void Init880(void);
void Init880(void)
{
	IDSC(desc_880, 0, 879);
	IDSC(desc_880 + 1, 1, 879);
	IDSC(desc_880 + 32, 391, 879);
	IDSC(desc_880 + 36, 379, 879);
	IDSC(desc_880 + 50, 386, 879);
}


#ifdef __cplusplus
}
#endif
