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

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6344);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6184);
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

LAB0:    xsi_set_current_line(80, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6408);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6200);
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

LAB0:    xsi_set_current_line(96, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 6472);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 6216);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0841067670_3212880686_p_3(char *t0)
{
    char t14[16];
    char t15[16];
    char t21[16];
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
    int t13;
    unsigned int t16;
    unsigned int t17;
    int t18;
    int t19;
    unsigned int t20;
    int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    int t29;
    int t30;
    int t31;
    unsigned int t32;
    char *t33;

LAB0:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6232);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 6664);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 10U);
    xsi_driver_first_trans_delta(t1, 0U, 10U, 0LL);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 11072U);
    t4 = (t0 + 1352U);
    t7 = *((char **)t4);
    t4 = (t0 + 11008U);
    t8 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t15, t7, t4, 16);
    t9 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t14, t3, t1, t8, t15);
    t10 = (t0 + 3528U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (t14 + 12U);
    t16 = *((unsigned int *)t12);
    t17 = (1U * t16);
    memcpy(t10, t9, t17);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t1 = (t0 + 11184U);
    t4 = (t0 + 1992U);
    t7 = *((char **)t4);
    t4 = (t0 + 3408U);
    t8 = *((char **)t4);
    t13 = *((int *)t8);
    t18 = (t13 - 1);
    t19 = (t18 - 0);
    t16 = (t19 * 1);
    t17 = (10U * t16);
    t20 = (0 + t17);
    t4 = (t7 + t20);
    t9 = (t21 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 9;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t22 = (0 - 9);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t23;
    t10 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t15, t4, t21, 16);
    t11 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t14, t3, t1, t10, t15);
    t12 = (t0 + 3528U);
    t24 = *((char **)t12);
    t12 = (t24 + 0);
    t25 = (t14 + 12U);
    t23 = *((unsigned int *)t25);
    t26 = (1U * t23);
    memcpy(t12, t11, t26);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 3408U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t18 = (t13 - 1);
    t1 = (t0 + 11464);
    *((int *)t1) = 1;
    t4 = (t0 + 11468);
    *((int *)t4) = t18;
    t19 = 1;
    t22 = t18;

LAB8:    if (t19 <= t22)
        goto LAB9;

LAB11:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t1 = (t0 + 6536);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(133, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 11104U);
    t4 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t14, t3, t1, 10);
    t7 = (t0 + 6728);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 10U);
    xsi_driver_first_trans_fast_port(t7);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(108, ng0);
    t3 = xsi_get_transient_memory(16U);
    memset(t3, 0, 16U);
    t7 = t3;
    memset(t7, (unsigned char)2, 16U);
    t8 = (t0 + 6536);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 16U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3648U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 3648U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t1 = (t0 + 6600);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t13;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(111, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t3 = t1;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 3528U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 16U);
    goto LAB6;

LAB9:    xsi_set_current_line(128, ng0);
    t7 = (t0 + 1992U);
    t8 = *((char **)t7);
    t7 = (t0 + 11464);
    t27 = *((int *)t7);
    t28 = (t27 - 1);
    t29 = (t28 - 0);
    t16 = (t29 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, t28);
    t17 = (10U * t16);
    t20 = (0 + t17);
    t9 = (t8 + t20);
    t10 = (t0 + 11464);
    t30 = *((int *)t10);
    t31 = (t30 - 0);
    t23 = (t31 * 1);
    t26 = (10U * t23);
    t32 = (0U + t26);
    t11 = (t0 + 6664);
    t12 = (t11 + 56U);
    t24 = *((char **)t12);
    t25 = (t24 + 56U);
    t33 = *((char **)t25);
    memcpy(t33, t9, 10U);
    xsi_driver_first_trans_delta(t11, t32, 10U, 0LL);

LAB10:    t1 = (t0 + 11464);
    t19 = *((int *)t1);
    t3 = (t0 + 11468);
    t22 = *((int *)t3);
    if (t19 == t22)
        goto LAB11;

LAB12:    t13 = (t19 + 1);
    t19 = t13;
    t4 = (t0 + 11464);
    *((int *)t4) = t19;
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

LAB0:    xsi_set_current_line(138, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 6248);
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

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 6856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 6264);
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
