/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/komplike/Digital-electronics-1/Labs/08-traffic_lights/traffic_lights/traffic_lights.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1434214030532753770_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1894529253_3212880686_p_0(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;
    static char *nl0[] = {&&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13};

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 3728);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 6607);
    t5 = (t0 + 3792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(49, ng0);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t6 = (t0 + 6536U);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t0 + 6552U);
    t10 = ieee_p_1242562249_sub_1434214030532753770_1035706684(IEEE_P_1242562249, t7, t6, t9, t8);
    if (t10 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 6611);
    t5 = (t0 + 3792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB16:    goto LAB7;

LAB9:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = (t0 + 2088U);
    t6 = *((char **)t5);
    t5 = (t0 + 6568U);
    t3 = ieee_p_1242562249_sub_1434214030532753770_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 6615);
    t5 = (t0 + 3792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB21:    goto LAB7;

LAB10:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = (t0 + 2088U);
    t6 = *((char **)t5);
    t5 = (t0 + 6568U);
    t3 = ieee_p_1242562249_sub_1434214030532753770_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 6619);
    t5 = (t0 + 3792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB26:    goto LAB7;

LAB11:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = (t0 + 1968U);
    t6 = *((char **)t5);
    t5 = (t0 + 6552U);
    t3 = ieee_p_1242562249_sub_1434214030532753770_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 6623);
    t5 = (t0 + 3792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB31:    goto LAB7;

LAB12:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = (t0 + 2088U);
    t6 = *((char **)t5);
    t5 = (t0 + 6568U);
    t3 = ieee_p_1242562249_sub_1434214030532753770_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB35;

LAB37:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 6627);
    t5 = (t0 + 3792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB36:    goto LAB7;

LAB13:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = (t0 + 2088U);
    t6 = *((char **)t5);
    t5 = (t0 + 6568U);
    t3 = ieee_p_1242562249_sub_1434214030532753770_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB40;

LAB42:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 6631);
    t5 = (t0 + 3792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB41:    goto LAB7;

LAB14:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB15:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 3728);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)0;
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t18 = (1U * t17);
    t3 = (4U != t18);
    if (t3 == 1)
        goto LAB18;

LAB19:    t7 = (t0 + 3792);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB16;

LAB18:    xsi_size_not_matching(4U, t18, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(58, ng0);
    t7 = (t0 + 3728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)1;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t18 = (1U * t17);
    t3 = (4U != t18);
    if (t3 == 1)
        goto LAB23;

LAB24:    t7 = (t0 + 3792);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB21;

LAB23:    xsi_size_not_matching(4U, t18, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(66, ng0);
    t7 = (t0 + 3728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t18 = (1U * t17);
    t3 = (4U != t18);
    if (t3 == 1)
        goto LAB28;

LAB29:    t7 = (t0 + 3792);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB26;

LAB28:    xsi_size_not_matching(4U, t18, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(74, ng0);
    t7 = (t0 + 3728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t18 = (1U * t17);
    t3 = (4U != t18);
    if (t3 == 1)
        goto LAB33;

LAB34:    t7 = (t0 + 3792);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB31;

LAB33:    xsi_size_not_matching(4U, t18, 0);
    goto LAB34;

LAB35:    xsi_set_current_line(82, ng0);
    t7 = (t0 + 3728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)4;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t18 = (1U * t17);
    t3 = (4U != t18);
    if (t3 == 1)
        goto LAB38;

LAB39:    t7 = (t0 + 3792);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB36;

LAB38:    xsi_size_not_matching(4U, t18, 0);
    goto LAB39;

LAB40:    xsi_set_current_line(90, ng0);
    t7 = (t0 + 3728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)5;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6536U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t16, t2, t1, 1);
    t6 = (t16 + 12U);
    t17 = *((unsigned int *)t6);
    t18 = (1U * t17);
    t3 = (4U != t18);
    if (t3 == 1)
        goto LAB43;

LAB44:    t7 = (t0 + 3792);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB41;

LAB43:    xsi_size_not_matching(4U, t18, 0);
    goto LAB44;

}

static void work_a_1894529253_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8};

LAB0:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 3648);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 6635);
    t6 = (t0 + 3856);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 6U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB4:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 6641);
    t4 = (t0 + 3856);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB5:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 6647);
    t4 = (t0 + 3856);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB6:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 6653);
    t4 = (t0 + 3856);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB7:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 6659);
    t4 = (t0 + 3856);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB8:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 6665);
    t4 = (t0 + 3856);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB9:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 6671);
    t4 = (t0 + 3856);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

}


extern void work_a_1894529253_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1894529253_3212880686_p_0,(void *)work_a_1894529253_3212880686_p_1};
	xsi_register_didat("work_a_1894529253_3212880686", "isim/traffic_lights_tb0_isim_beh.exe.sim/work/a_1894529253_3212880686.didat");
	xsi_register_executes(pe);
}
