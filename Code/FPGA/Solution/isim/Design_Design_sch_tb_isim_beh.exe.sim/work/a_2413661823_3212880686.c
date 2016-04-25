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

LAB0:    t1 = (t0 + 3512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 4144);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4144);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3320);
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
    int64 t12;
    int t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 3760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4336);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 7068);
    t4 = (t0 + 4400);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(104, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 7076);
    *((int *)t2) = 0;
    t3 = (t0 + 7080);
    *((int *)t3) = 1;
    t10 = 0;
    t11 = 1;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(140, ng0);

LAB40:    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(110, ng0);
    t4 = (t0 + 4208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t12 = (t9 / 2);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t12);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 7076);
    t10 = *((int *)t2);
    t3 = (t0 + 7080);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB11;

LAB37:    t13 = (t10 + 1);
    t10 = t13;
    t4 = (t0 + 7076);
    *((int *)t4) = t10;
    goto LAB8;

LAB12:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 7084);
    *((int *)t2) = 15;
    t3 = (t0 + 7088);
    *((int *)t3) = 0;
    t13 = 15;
    t14 = 0;

LAB16:    if (t13 >= t14)
        goto LAB17;

LAB19:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t12 = (t9 / 2);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t12);

LAB31:    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(116, ng0);
    t4 = (t0 + 2528U);
    t5 = *((char **)t4);
    t4 = (t0 + 7084);
    t15 = *((int *)t4);
    t16 = (t15 - 15);
    t17 = (t16 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t4));
    t18 = (1U * t17);
    t19 = (0 + t18);
    t6 = (t5 + t19);
    t20 = *((unsigned char *)t6);
    t7 = (t0 + 4272);
    t8 = (t7 + 56U);
    t21 = *((char **)t8);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t20;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t12 = (t9 / 2);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t12);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t2 = (t0 + 7084);
    t13 = *((int *)t2);
    t3 = (t0 + 7088);
    t14 = *((int *)t3);
    if (t13 == t14)
        goto LAB19;

LAB28:    t15 = (t13 + -1);
    t13 = t15;
    t4 = (t0 + 7084);
    *((int *)t4) = t13;
    goto LAB16;

LAB20:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4336);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t12 = (t9 / 2);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t12);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4336);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB29:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 4208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t12 = (t9 / 2);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t12);

LAB35:    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

LAB33:    goto LAB10;

LAB34:    goto LAB33;

LAB36:    goto LAB34;

LAB38:    goto LAB2;

LAB39:    goto LAB38;

LAB41:    goto LAB39;

}


extern void work_a_2413661823_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2413661823_3212880686_p_0,(void *)work_a_2413661823_3212880686_p_1};
	xsi_register_didat("work_a_2413661823_3212880686", "isim/Design_Design_sch_tb_isim_beh.exe.sim/work/a_2413661823_3212880686.didat");
	xsi_register_executes(pe);
}
