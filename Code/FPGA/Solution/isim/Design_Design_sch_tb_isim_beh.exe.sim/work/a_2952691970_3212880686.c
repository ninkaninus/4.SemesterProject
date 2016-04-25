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
static const char *ng0 = "D:/Github/4.SemesterProject/Code/FPGA/Solution/Motor_Controller.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2952691970_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3960);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 6380U);
    t5 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t4, t3, 1);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(59, ng0);
    t6 = (t0 + 1672U);
    t10 = *((char **)t6);
    t6 = (t0 + 4056);
    t11 = (t6 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 2U);
    xsi_driver_first_trans_fast(t6);
    goto LAB9;

}

static void work_a_2952691970_3212880686_p_1(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 3640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 6471);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 6473);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 6475);
    t4 = (t0 + 4120);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(65, ng0);

LAB17:    t2 = (t0 + 3976);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t13 = ((IEEE_P_2592010699) + 4024);
    t9 = xsi_base_array_concat(t9, t12, t13, (char)99, (unsigned char)2, (char)99, t11, (char)101);
    t14 = (1U + 1U);
    t15 = (2U != t14);
    if (t15 == 1)
        goto LAB11;

LAB12:    t16 = (t0 + 4120);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 2U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB4;

LAB6:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t4 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_base_array_concat(t2, t12, t4, (char)99, t11, (char)99, (unsigned char)2, (char)101);
    t14 = (1U + 1U);
    t15 = (2U != t14);
    if (t15 == 1)
        goto LAB13;

LAB14:    t6 = (t0 + 4120);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t2, 2U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB10:;
LAB11:    xsi_size_not_matching(2U, t14, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(2U, t14, 0);
    goto LAB14;

LAB15:    t3 = (t0 + 3976);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}


extern void work_a_2952691970_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2952691970_3212880686_p_0,(void *)work_a_2952691970_3212880686_p_1};
	xsi_register_didat("work_a_2952691970_3212880686", "isim/Design_Design_sch_tb_isim_beh.exe.sim/work/a_2952691970_3212880686.didat");
	xsi_register_executes(pe);
}
