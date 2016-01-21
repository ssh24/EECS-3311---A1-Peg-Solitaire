/*
 * Code for class BOARD_TEMPLATES
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F863_6983(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6984(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6985(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6986(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6987(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6988(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6989(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6990(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6991(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6992(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6993(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6994(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6995(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6996(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6997(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6998(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_6999(EIF_REFERENCE);
extern void F863_7669(EIF_REFERENCE, int);
extern void EIF_Minit863(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {BOARD_TEMPLATES}.make */
void F863_6983 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 862, Current, 0, 0, 12625);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(862, Current, 12625);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 4913, 0xF800035F, 0); /* default_board */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(4913, dtype, Dftype(Current))));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4929, Dtype(tr1)))(tr1);
	
	RTNHOOK(1,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4913, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 4914, 0xF800035F, 0); /* easy_board */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(4914, dtype, Dftype(Current))));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4930, Dtype(tr1)))(tr1);
	
	RTNHOOK(2,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4914, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 4915, 0xF800035F, 0); /* cross_board */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(4915, dtype, Dftype(Current))));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4931, Dtype(tr1)))(tr1);
	
	RTNHOOK(3,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4915, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 4916, 0xF800035F, 0); /* plus_board */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(4916, dtype, Dftype(Current))));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4932, Dtype(tr1)))(tr1);
	
	RTNHOOK(4,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4916, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 4917, 0xF800035F, 0); /* pyramid_board */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(4917, dtype, Dftype(Current))));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4933, Dtype(tr1)))(tr1);
	
	RTNHOOK(5,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4917, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 4918, 0xF800035F, 0); /* arrow_board */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(4918, dtype, Dftype(Current))));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4934, Dtype(tr1)))(tr1);
	
	RTNHOOK(6,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4918, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 4919, 0xF800035F, 0); /* diamond_board */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(4919, dtype, Dftype(Current))));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4935, Dtype(tr1)))(tr1);
	
	RTNHOOK(7,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4919, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 4920, 0xF800035F, 0); /* skull_board */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(4920, dtype, Dftype(Current))));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4936, Dtype(tr1)))(tr1);
	
	RTNHOOK(8,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4920, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	RTDBGAA(Current, dtype, 4921, 0xF80000DB, 0); /* default_board_out */
	
	tr1 = RTMS_EX_H("*******\012*******\012*******\012*******\012*******\012*******\012*******",55,778293802);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4921, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(10);
	RTDBGAA(Current, dtype, 4922, 0xF80000DB, 0); /* easy_board_out */
	
	tr1 = RTMS_EX_H("***.***\012***O***\012***O***\012***.***\012***O***\012***.***\012*******",55,2056662058);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4922, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(11);
	RTDBGAA(Current, dtype, 4923, 0xF80000DB, 0); /* cross_board_out */
	
	tr1 = RTMS_EX_H("**...**\012**.O.**\012..OOO..\012...O...\012...O...\012**...**\012**...**",55,338884138);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4923, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(12);
	RTDBGAA(Current, dtype, 4924, 0xF80000DB, 0); /* plus_board_out */
	
	tr1 = RTMS_EX_H("**...**\012**.O.**\012...O...\012.OOOOO.\012...O...\012**.O.**\012**...**",55,1617426474);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4924, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(13);
	RTDBGAA(Current, dtype, 4925, 0xF80000DB, 0); /* pyramid_board_out */
	
	tr1 = RTMS_EX_H("**...**\012**.O.**\012..OOO..\012.OOOOO.\012OOOOOOO\012**...**\012**...**",55,720226346);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4925, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(14);
	RTDBGAA(Current, dtype, 4926, 0xF80000DB, 0); /* arrow_board_out */
	
	tr1 = RTMS_EX_H("**.O.**\012**OOO**\012.OOOOO.\012...O...\012...O...\012**OOO**\012**OOO**",55,1324979754);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4926, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(15);
	RTDBGAA(Current, dtype, 4927, 0xF80000DB, 0); /* diamond_board_out */
	
	tr1 = RTMS_EX_H("**.O.**\012**OOO**\012.OOOOO.\012OOO.OOO\012.OOOOO.\012**OOO**\012**.O.**",55,481193770);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4927, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(16);
	RTDBGAA(Current, dtype, 4928, 0xF80000DB, 0); /* skull_board_out */
	
	tr1 = RTMS_EX_H("**OOO**\012**OOO**\012.OOOOO.\012.O.O.O.\012.OOOOO.\012**OOO**\012**OOO**",55,1784625706);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4928, dtype)) = (EIF_REFERENCE) tr1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {BOARD_TEMPLATES}.default_board */
EIF_TYPED_VALUE F863_6984 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4913,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.easy_board */
EIF_TYPED_VALUE F863_6985 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4914,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.cross_board */
EIF_TYPED_VALUE F863_6986 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4915,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.plus_board */
EIF_TYPED_VALUE F863_6987 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4916,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.pyramid_board */
EIF_TYPED_VALUE F863_6988 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4917,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.arrow_board */
EIF_TYPED_VALUE F863_6989 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4918,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.diamond_board */
EIF_TYPED_VALUE F863_6990 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4919,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.skull_board */
EIF_TYPED_VALUE F863_6991 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4920,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.default_board_out */
EIF_TYPED_VALUE F863_6992 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4921,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.easy_board_out */
EIF_TYPED_VALUE F863_6993 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4922,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.cross_board_out */
EIF_TYPED_VALUE F863_6994 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4923,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.plus_board_out */
EIF_TYPED_VALUE F863_6995 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4924,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.pyramid_board_out */
EIF_TYPED_VALUE F863_6996 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4925,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.arrow_board_out */
EIF_TYPED_VALUE F863_6997 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4926,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.diamond_board_out */
EIF_TYPED_VALUE F863_6998 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4927,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}.skull_board_out */
EIF_TYPED_VALUE F863_6999 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4928,Dtype(Current)));
	return r;
}


/* {BOARD_TEMPLATES}._invariant */
void F863_7669 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 862, Current, 0, 7668);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("correct_default_board_output", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4921, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, RTMS_EX_H("*******\012*******\012*******\012*******\012*******\012*******\012*******",55,778293802))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("correct_easy_board_output", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4922, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, RTMS_EX_H("***.***\012***O***\012***O***\012***.***\012***O***\012***.***\012*******",55,2056662058))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("correct_cross_board_output", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4923, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, RTMS_EX_H("**...**\012**.O.**\012..OOO..\012...O...\012...O...\012**...**\012**...**",55,338884138))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("correct_plus_board_output", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4924, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, RTMS_EX_H("**...**\012**.O.**\012...O...\012.OOOOO.\012...O...\012**.O.**\012**...**",55,1617426474))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("correct_pyramid_board_output", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4925, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, RTMS_EX_H("**...**\012**.O.**\012..OOO..\012.OOOOO.\012OOOOOOO\012**...**\012**...**",55,720226346))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("correct_arrow_board_output", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4926, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, RTMS_EX_H("**.O.**\012**OOO**\012.OOOOO.\012...O...\012...O...\012**OOO**\012**OOO**",55,1324979754))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("correct_diamond_board_output", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4927, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, RTMS_EX_H("**.O.**\012**OOO**\012.OOOOO.\012OOO.OOO\012.OOOOO.\012**OOO**\012**.O.**",55,481193770))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("correct_skull_board_output", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4928, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, RTMS_EX_H("**OOO**\012**OOO**\012.OOOOO.\012.O.O.O.\012.OOOOO.\012**OOO**\012**OOO**",55,1784625706))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("consistent_default_board_outputs", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4913, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(28, "out", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4921, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr2, tr1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("consistent_easy_board_outputs", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4914, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(28, "out", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4922, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr2, tr1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("consistent_cross_board_outputs", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4923, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(28, "out", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4923, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr2, tr1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("consistent_plus_board_outputs", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4924, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(28, "out", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4924, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr2, tr1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("consistent_pyramid_board_outputs", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4925, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(28, "out", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4925, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr2, tr1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("consistent_arrow_board_outputs", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4926, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(28, "out", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4926, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr2, tr1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("consistent_diamond_board_outputs", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4927, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(28, "out", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4927, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr2, tr1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("consistent_skull_board_outputs", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4928, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(28, "out", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4928, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr2, tr1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
#undef up1
#undef up2
}

void EIF_Minit863 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
