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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Github/4.SemesterProject/Code/FPGA/Solution/NumberToBcd.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0640520028_3212880686_p_0(char *t0)
{
    char t11[16];
    char t16[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 1768U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 16U);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1312U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3072);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 1648U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 12U);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5169);
    *((int *)t1) = 0;
    t2 = (t0 + 5173);
    *((int *)t2) = 11;
    t6 = 0;
    t7 = 11;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t1 = (t0 + 3152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t12 = (t4 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB6:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1768U);
    t4 = *((char **)t3);
    t8 = (15 - 3);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t3 = (t4 + t10);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 3;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 3);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t5 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t3, t11, 4);
    if (t5 != 0)
        goto LAB9;

LAB11:
LAB10:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t8 = (15 - 7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t11 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 7;
    t4 = (t3 + 4U);
    *((int *)t4) = 4;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t14 = (4 - 7);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t15;
    t5 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t11, 4);
    if (t5 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t8 = (15 - 11);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t11 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 11;
    t4 = (t3 + 4U);
    *((int *)t4) = 8;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t14 = (8 - 11);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t15;
    t5 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t11, 4);
    if (t5 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t8 = (15 - 15);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t11 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 15;
    t4 = (t3 + 4U);
    *((int *)t4) = 12;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t14 = (12 - 15);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t15;
    t5 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t11, 4);
    if (t5 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t8 = (15 - 14);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = (t0 + 1648U);
    t4 = *((char **)t3);
    t14 = (11 - 11);
    t15 = (t14 * -1);
    t18 = (1U * t15);
    t19 = (0 + t18);
    t3 = (t4 + t19);
    t5 = *((unsigned char *)t3);
    t13 = ((IEEE_P_2592010699) + 4024);
    t17 = (t16 + 0U);
    t21 = (t17 + 0U);
    *((int *)t21) = 14;
    t21 = (t17 + 4U);
    *((int *)t21) = 0;
    t21 = (t17 + 8U);
    *((int *)t21) = -1;
    t23 = (0 - 14);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t21 = (t17 + 12U);
    *((unsigned int *)t21) = t24;
    t12 = xsi_base_array_concat(t12, t11, t13, (char)97, t1, t16, (char)99, t5, (char)101);
    t21 = (t0 + 1768U);
    t22 = *((char **)t21);
    t21 = (t22 + 0);
    t24 = (15U + 1U);
    memcpy(t21, t12, t24);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t8 = (11 - 10);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t4 = ((IEEE_P_2592010699) + 4024);
    t12 = (t16 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 10;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 10);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t3 = xsi_base_array_concat(t3, t11, t4, (char)97, t1, t16, (char)99, (unsigned char)2, (char)101);
    t13 = (t0 + 1648U);
    t17 = *((char **)t13);
    t13 = (t17 + 0);
    t15 = (11U + 1U);
    memcpy(t13, t3, t15);

LAB7:    t1 = (t0 + 5169);
    t6 = *((int *)t1);
    t2 = (t0 + 5173);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB21:    t14 = (t6 + 1);
    t6 = t14;
    t3 = (t0 + 5169);
    *((int *)t3) = t6;
    goto LAB5;

LAB9:    xsi_set_current_line(53, ng0);
    t13 = (t0 + 1768U);
    t17 = *((char **)t13);
    t15 = (15 - 3);
    t18 = (t15 * 1U);
    t19 = (0 + t18);
    t13 = (t17 + t19);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 3;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 3);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t22 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t13, t20, 3);
    t25 = (t0 + 1768U);
    t26 = *((char **)t25);
    t24 = (15 - 3);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t25 = (t26 + t28);
    t29 = (t16 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    memcpy(t25, t22, t31);
    goto LAB10;

LAB12:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1768U);
    t12 = *((char **)t4);
    t15 = (15 - 7);
    t18 = (t15 * 1U);
    t19 = (0 + t18);
    t4 = (t12 + t19);
    t13 = (t20 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 7;
    t17 = (t13 + 4U);
    *((int *)t17) = 4;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t23 = (4 - 7);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 1768U);
    t22 = *((char **)t21);
    t24 = (15 - 7);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB13;

LAB15:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1768U);
    t12 = *((char **)t4);
    t15 = (15 - 11);
    t18 = (t15 * 1U);
    t19 = (0 + t18);
    t4 = (t12 + t19);
    t13 = (t20 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 11;
    t17 = (t13 + 4U);
    *((int *)t17) = 8;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t23 = (8 - 11);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 1768U);
    t22 = *((char **)t21);
    t24 = (15 - 11);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB16;

LAB18:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 1768U);
    t12 = *((char **)t4);
    t15 = (15 - 15);
    t18 = (t15 * 1U);
    t19 = (0 + t18);
    t4 = (t12 + t19);
    t13 = (t20 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 15;
    t17 = (t13 + 4U);
    *((int *)t17) = 12;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t23 = (12 - 15);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t24;
    t17 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t20, 3);
    t21 = (t0 + 1768U);
    t22 = *((char **)t21);
    t24 = (15 - 15);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t21 = (t22 + t28);
    t25 = (t16 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t21, t17, t31);
    goto LAB19;

}


extern void work_a_0640520028_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0640520028_3212880686_p_0};
	xsi_register_didat("work_a_0640520028_3212880686", "isim/bcdTest_isim_beh.exe.sim/work/a_0640520028_3212880686.didat");
	xsi_register_executes(pe);
}
