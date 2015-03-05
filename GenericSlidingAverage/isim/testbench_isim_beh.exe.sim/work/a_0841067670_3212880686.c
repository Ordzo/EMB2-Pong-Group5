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
static const char *ng0 = "/home/gudmundur/FPGA Projects/Pong/GenericSlidingAverage/sliding_average.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2749763749646623249_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0841067670_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6064);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5904);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0841067670_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6128);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5920);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0841067670_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 6192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 14U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 5936);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0841067670_3212880686_p_3(char *t0)
{
    char t13[16];
    char t14[16];
    char t19[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    int t28;
    int t29;
    int t30;
    int t31;
    unsigned int t32;
    char *t33;

LAB0:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(105, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 6320);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 10U);
    xsi_driver_first_trans_delta(t1, 0U, 10U, 0LL);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 10384U);
    t4 = (t0 + 1992U);
    t7 = *((char **)t4);
    t15 = (0 - 0);
    t16 = (t15 * 1);
    t17 = (10U * t16);
    t18 = (0 + t17);
    t4 = (t7 + t18);
    t8 = (t19 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 9;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t20 = (0 - 9);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t21;
    t9 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t14, t4, t19, 14);
    t10 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t13, t3, t1, t9, t14);
    t11 = (t0 + 3368U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t22 = (t13 + 12U);
    t21 = *((unsigned int *)t22);
    t23 = (1U * t21);
    memcpy(t11, t10, t23);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3368U);
    t3 = *((char **)t1);
    t1 = (t0 + 10480U);
    t4 = (t0 + 1992U);
    t7 = *((char **)t4);
    t4 = (t0 + 3248U);
    t8 = *((char **)t4);
    t15 = *((int *)t8);
    t20 = (t15 - 0);
    t16 = (t20 * 1);
    t17 = (10U * t16);
    t18 = (0 + t17);
    t4 = (t7 + t18);
    t9 = (t19 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 9;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t24 = (0 - 9);
    t21 = (t24 * -1);
    t21 = (t21 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t21;
    t10 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t14, t4, t19, 14);
    t11 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t13, t3, t1, t10, t14);
    t12 = (t0 + 3368U);
    t22 = *((char **)t12);
    t12 = (t22 + 0);
    t25 = (t13 + 12U);
    t21 = *((unsigned int *)t25);
    t23 = (1U * t21);
    memcpy(t12, t11, t23);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 3248U);
    t3 = *((char **)t1);
    t15 = *((int *)t3);
    t20 = (t15 - 1);
    t1 = (t0 + 10718);
    *((int *)t1) = 1;
    t4 = (t0 + 10722);
    *((int *)t4) = t20;
    t24 = 1;
    t26 = t20;

LAB8:    if (t24 <= t26)
        goto LAB9;

LAB11:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 3368U);
    t3 = *((char **)t1);
    t1 = (t0 + 6256);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 14U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 10416U);
    t4 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t13, t3, t1, 10);
    t7 = (t0 + 6384);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 10U);
    xsi_driver_first_trans_fast_port(t7);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(106, ng0);
    t3 = xsi_get_transient_memory(14U);
    memset(t3, 0, 14U);
    t7 = t3;
    memset(t7, (unsigned char)2, 14U);
    t8 = (t0 + 6256);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 14U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB9:    xsi_set_current_line(113, ng0);
    t7 = (t0 + 1992U);
    t8 = *((char **)t7);
    t7 = (t0 + 10718);
    t27 = *((int *)t7);
    t28 = (t27 - 1);
    t29 = (t28 - 0);
    t16 = (t29 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, t28);
    t17 = (10U * t16);
    t18 = (0 + t17);
    t9 = (t8 + t18);
    t10 = (t0 + 10718);
    t30 = *((int *)t10);
    t31 = (t30 - 0);
    t21 = (t31 * 1);
    t23 = (10U * t21);
    t32 = (0U + t23);
    t11 = (t0 + 6320);
    t12 = (t11 + 56U);
    t22 = *((char **)t12);
    t25 = (t22 + 56U);
    t33 = *((char **)t25);
    memcpy(t33, t9, 10U);
    xsi_driver_first_trans_delta(t11, t32, 10U, 0LL);

LAB10:    t1 = (t0 + 10718);
    t24 = *((int *)t1);
    t3 = (t0 + 10722);
    t26 = *((int *)t3);
    if (t24 == t26)
        goto LAB11;

LAB12:    t15 = (t24 + 1);
    t24 = t15;
    t4 = (t0 + 10718);
    *((int *)t4) = t24;
    goto LAB8;

}

static void work_a_0841067670_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(124, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 14U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 5968);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0841067670_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(89, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 6512);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 14U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 5984);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0841067670_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0841067670_3212880686_p_0,(void *)work_a_0841067670_3212880686_p_1,(void *)work_a_0841067670_3212880686_p_2,(void *)work_a_0841067670_3212880686_p_3,(void *)work_a_0841067670_3212880686_p_4,(void *)work_a_0841067670_3212880686_p_5};
	xsi_register_didat("work_a_0841067670_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_0841067670_3212880686.didat");
	xsi_register_executes(pe);
}
