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
static const char *ng0 = "D:/Github/4.SemesterProject/Code/FPGA/Solution/SPI_Slave3.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_0661083184_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6728);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6584);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0661083184_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 12U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 6600);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0661083184_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 6856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 12U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6616);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0661083184_3212880686_p_3(char *t0)
{
    char t13[16];
    char t24[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    char *t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    int t26;
    int t27;

LAB0:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB9;

LAB11:
LAB10:    t1 = (t0 + 6632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t5 = (0 - 1);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t14 = ((IEEE_P_2592010699) + 4024);
    t10 = xsi_base_array_concat(t10, t13, t14, (char)99, t9, (char)99, t12, (char)101);
    t15 = (1U + 1U);
    t16 = (2U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 6920);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 2U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t5 = (0 - 1);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1352U);
    t10 = *((char **)t4);
    t9 = *((unsigned char *)t10);
    t11 = ((IEEE_P_2592010699) + 4024);
    t4 = xsi_base_array_concat(t4, t13, t11, (char)99, t2, (char)99, t9, (char)101);
    t15 = (1U + 1U);
    t12 = (2U != t15);
    if (t12 == 1)
        goto LAB7;

LAB8:    t14 = (t0 + 6984);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t4, 2U);
    xsi_driver_first_trans_fast(t14);
    goto LAB3;

LAB5:    xsi_size_not_matching(2U, t15, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(2U, t15, 0);
    goto LAB8;

LAB9:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t3 = (t0 + 11280U);
    t10 = (t0 + 11478);
    t14 = (t13 + 0U);
    t17 = (t14 + 0U);
    *((int *)t17) = 0;
    t17 = (t14 + 4U);
    *((int *)t17) = 1;
    t17 = (t14 + 8U);
    *((int *)t17) = 1;
    t5 = (1 - 0);
    t6 = (t5 * 1);
    t6 = (t6 + 1);
    t17 = (t14 + 12U);
    *((unsigned int *)t17) = t6;
    t9 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t3, t10, t13);
    if (t9 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 11264U);
    t4 = (t0 + 11480);
    t11 = (t13 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 0;
    t14 = (t11 + 4U);
    *((int *)t14) = 1;
    t14 = (t11 + 8U);
    *((int *)t14) = 1;
    t5 = (1 - 0);
    t6 = (t5 * 1);
    t6 = (t6 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t6;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t13);
    if (t2 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 11264U);
    t4 = (t0 + 11482);
    t11 = (t13 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 0;
    t14 = (t11 + 4U);
    *((int *)t14) = 1;
    t14 = (t11 + 8U);
    *((int *)t14) = 1;
    t5 = (1 - 0);
    t6 = (t5 * 1);
    t6 = (t6 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t6;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t13);
    if (t2 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB10;

LAB12:    xsi_set_current_line(80, ng0);
    t17 = xsi_get_transient_memory(4U);
    memset(t17, 0, 4U);
    t18 = t17;
    memset(t18, (unsigned char)2, 4U);
    t19 = (t0 + 7048);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 4U);
    xsi_driver_first_trans_fast(t19);
    goto LAB13;

LAB15:    xsi_set_current_line(85, ng0);
    t14 = (t0 + 3112U);
    t17 = *((char **)t14);
    t14 = (t0 + 11296U);
    t18 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t24, t17, t14, 1);
    t19 = (t24 + 12U);
    t6 = *((unsigned int *)t19);
    t7 = (1U * t6);
    t9 = (4U != t7);
    if (t9 == 1)
        goto LAB18;

LAB19:    t20 = (t0 + 7048);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t25 = *((char **)t23);
    memcpy(t25, t18, 4U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t1 = (t0 + 11296U);
    t5 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t4 = (t0 + 4288U);
    t10 = *((char **)t4);
    t4 = (t10 + 0);
    *((int *)t4) = t5;
    t11 = (t0 + 4232U);
    xsi_variable_act(t11);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t1 = (t0 + 4288U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t26 = (t5 - 0);
    t6 = (t26 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t5);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t10 = (t0 + 7112);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t2;
    xsi_driver_first_trans_fast_port(t10);
    goto LAB16;

LAB18:    xsi_size_not_matching(4U, t7, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(91, ng0);
    t14 = (t0 + 1512U);
    t17 = *((char **)t14);
    t9 = *((unsigned char *)t17);
    t14 = (t0 + 4288U);
    t18 = *((char **)t14);
    t26 = *((int *)t18);
    t27 = (t26 - 0);
    t6 = (t27 * 1);
    t7 = (1 * t6);
    t8 = (0U + t7);
    t14 = (t0 + 7176);
    t19 = (t14 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t9;
    xsi_driver_first_trans_delta(t14, t8, 1, 0LL);
    goto LAB21;

}

static void work_a_0661083184_3212880686_p_4(char *t0)
{
    char t11[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    unsigned int t20;
    unsigned int t21;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14};

LAB0:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6648);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 7240);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(108, ng0);
    t4 = xsi_get_transient_memory(16U);
    memset(t4, 0, 16U);
    t5 = t4;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 7304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 11280U);
    t4 = (t0 + 11484);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (1 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t11);
    if (t2 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB5;

LAB7:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 4288U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t14 = (t12 == 3);
    if (t14 == 1)
        goto LAB23;

LAB24:    t2 = (unsigned char)0;

LAB25:    if (t2 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB5;

LAB8:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 7368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t13 = (11 - 11);
    t20 = (t13 * 1U);
    t21 = (0 + t20);
    t1 = (t3 + t21);
    t4 = (t0 + 7304);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 12U);
    xsi_driver_first_trans_delta(t4, 4U, 12U, 0LL);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 7368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 4288U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t14 = (t12 == 15);
    if (t14 == 1)
        goto LAB29;

LAB30:    t2 = (unsigned char)0;

LAB31:    if (t2 != 0)
        goto LAB26;

LAB28:
LAB27:    goto LAB5;

LAB11:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 7240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(141, ng0);
    t1 = (t0 + 7368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB12:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 7368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB13:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 7240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(149, ng0);
    t1 = (t0 + 7368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB14:    xsi_set_current_line(154, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 11280U);
    t4 = (t0 + 11494);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (1 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t11);
    if (t2 != 0)
        goto LAB32;

LAB34:
LAB33:    goto LAB5;

LAB15:    xsi_set_current_line(110, ng0);
    t7 = (t0 + 11486);
    t14 = (4U != 4U);
    if (t14 == 1)
        goto LAB18;

LAB19:    t9 = (t0 + 7304);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 4U);
    xsi_driver_first_trans_delta(t9, 0U, 4U, 0LL);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 7368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB16;

LAB18:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(117, ng0);
    t8 = (t0 + 7368);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t13 = (0 - 0);
    t20 = (t13 * 1U);
    t21 = (0 + t20);
    t1 = (t3 + t21);
    t4 = (t0 + 7432);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB21;

LAB23:    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t1 = (t0 + 11264U);
    t5 = (t0 + 11490);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t18 = (1 - 0);
    t13 = (t18 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t1, t5, t11);
    t2 = t19;
    goto LAB25;

LAB26:    xsi_set_current_line(134, ng0);
    t8 = (t0 + 7368);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)5;
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t13 = (4 - 0);
    t20 = (t13 * 1U);
    t21 = (0 + t20);
    t1 = (t3 + t21);
    t4 = (t0 + 7496);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 12U);
    xsi_driver_first_trans_fast(t4);
    goto LAB27;

LAB29:    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t1 = (t0 + 11264U);
    t5 = (t0 + 11492);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t18 = (1 - 0);
    t13 = (t18 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t1, t5, t11);
    t2 = t19;
    goto LAB31;

LAB32:    xsi_set_current_line(155, ng0);
    t7 = (t0 + 7368);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    *((unsigned char *)t15) = (unsigned char)0;
    xsi_driver_first_trans_fast(t7);
    goto LAB33;

}


extern void work_a_0661083184_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0661083184_3212880686_p_0,(void *)work_a_0661083184_3212880686_p_1,(void *)work_a_0661083184_3212880686_p_2,(void *)work_a_0661083184_3212880686_p_3,(void *)work_a_0661083184_3212880686_p_4};
	xsi_register_didat("work_a_0661083184_3212880686", "isim/Design_Design_sch_tb_isim_beh.exe.sim/work/a_0661083184_3212880686.didat");
	xsi_register_executes(pe);
}
