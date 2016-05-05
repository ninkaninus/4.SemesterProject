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
static const char *ng0 = "D:/Github/4.SemesterProject/Code/FPGA/Solution/TestDesign.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2413661823_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4304);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3480);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4304);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3480);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2413661823_3212880686_p_1(char *t0)
{
    char t24[16];
    char t25[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    int64 t14;
    int t15;
    int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    unsigned int t26;
    unsigned char t27;
    char *t28;

LAB0:    t1 = (t0 + 3920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4432);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 7404);
    t4 = (t0 + 4560);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(107, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3728);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 7412);
    *((int *)t2) = 0;
    t3 = (t0 + 7416);
    *((int *)t3) = 9;
    t10 = 0;
    t11 = 9;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(147, ng0);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(113, ng0);
    t4 = xsi_get_transient_memory(16U);
    memset(t4, 0, 16U);
    t5 = t4;
    memset(t5, (unsigned char)6, 16U);
    t6 = (t0 + 4624);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2568U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t14 = (t9 / 2);
    t2 = (t0 + 3728);
    xsi_process_wait(t2, t14);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 7412);
    t10 = *((int *)t2);
    t3 = (t0 + 7416);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB11;

LAB39:    t15 = (t10 + 1);
    t10 = t15;
    t4 = (t0 + 7412);
    *((int *)t4) = t10;
    goto LAB8;

LAB12:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 7420);
    *((int *)t2) = 15;
    t3 = (t0 + 7424);
    *((int *)t3) = 0;
    t15 = 15;
    t16 = 0;

LAB16:    if (t15 >= t16)
        goto LAB17;

LAB19:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 2568U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t14 = (t9 / 2);
    t2 = (t0 + 3728);
    xsi_process_wait(t2, t14);

LAB33:    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(121, ng0);
    t4 = (t0 + 2688U);
    t5 = *((char **)t4);
    t4 = (t0 + 7420);
    t17 = *((int *)t4);
    t18 = (t17 - 15);
    t19 = (t18 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t4));
    t20 = (1U * t19);
    t21 = (0 + t20);
    t6 = (t5 + t21);
    t22 = *((unsigned char *)t6);
    t7 = (t0 + 4432);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t23 = *((char **)t13);
    *((unsigned char *)t23) = t22;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2568U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t14 = (t9 / 2);
    t2 = (t0 + 3728);
    xsi_process_wait(t2, t14);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t2 = (t0 + 7420);
    t15 = *((int *)t2);
    t3 = (t0 + 7424);
    t16 = *((int *)t3);
    if (t15 == t16)
        goto LAB19;

LAB30:    t17 = (t15 + -1);
    t15 = t17;
    t4 = (t0 + 7420);
    *((int *)t4) = t15;
    goto LAB16;

LAB20:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2568U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t14 = (t9 / 2);
    t2 = (t0 + 3728);
    xsi_process_wait(t2, t14);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t19 = (15 - 14);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t3 + t21);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t22 = *((unsigned char *)t5);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t25 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 14;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t17 = (0 - 14);
    t26 = (t17 * -1);
    t26 = (t26 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t26;
    t4 = xsi_base_array_concat(t4, t24, t6, (char)97, t2, t25, (char)99, t22, (char)101);
    t26 = (15U + 1U);
    t27 = (16U != t26);
    if (t27 == 1)
        goto LAB28;

LAB29:    t8 = (t0 + 4624);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    t23 = (t13 + 56U);
    t28 = *((char **)t23);
    memcpy(t28, t4, 16U);
    xsi_driver_first_trans_fast(t8);
    goto LAB18;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_size_not_matching(16U, t26, 0);
    goto LAB29;

LAB31:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 4368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 4432);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2568U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t14 = (t9 / 2);
    t2 = (t0 + 3728);
    xsi_process_wait(t2, t14);

LAB37:    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB32:    goto LAB31;

LAB34:    goto LAB32;

LAB35:    goto LAB10;

LAB36:    goto LAB35;

LAB38:    goto LAB36;

LAB40:    goto LAB2;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

}


extern void work_a_2413661823_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2413661823_3212880686_p_0,(void *)work_a_2413661823_3212880686_p_1};
	xsi_register_didat("work_a_2413661823_3212880686", "isim/Design_Design_sch_tb_isim_par.exe.sim/work/a_2413661823_3212880686.didat");
	xsi_register_executes(pe);
}
