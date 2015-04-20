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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xpro_v14/8_semester/EMB2-Pong-Group5/vga_decoder/vga_decoder/vga_decoder.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0863149466_3212880686_p_0(char *t0)
{
    char t9[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;

LAB0:    xsi_set_current_line(160, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4640);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(162, ng0);
    t3 = (t0 + 1972U);
    t4 = *((char **)t3);
    t3 = (t0 + 4700);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 10U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(163, ng0);
    t1 = (t0 + 2064U);
    t3 = *((char **)t1);
    t1 = (t0 + 4736);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 10U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(164, ng0);
    t1 = (t0 + 2156U);
    t3 = *((char **)t1);
    t1 = (t0 + 4772);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 10U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(167, ng0);
    t1 = (t0 + 2248U);
    t3 = *((char **)t1);
    t1 = (t0 + 10244U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t3, t1, 1);
    t5 = (t9 + 12U);
    t10 = *((unsigned int *)t5);
    t11 = (1U * t10);
    t2 = (10U != t11);
    if (t2 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 4808);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 10U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(171, ng0);
    t1 = (t0 + 776U);
    t3 = *((char **)t1);
    t14 = *((unsigned char *)t3);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB10;

LAB11:    t2 = (unsigned char)0;

LAB12:    if (t2 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(177, ng0);
    t1 = (t0 + 776U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3532U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t2;
    xsi_set_current_line(181, ng0);
    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t14 = *((unsigned char *)t3);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB18;

LAB19:    t2 = (unsigned char)0;

LAB20:    if (t2 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(185, ng0);
    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3600U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t2;
    goto LAB3;

LAB5:    xsi_size_not_matching(10U, t11, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(173, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t5 = t1;
    memset(t5, (unsigned char)2, 10U);
    t6 = (t0 + 4808);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(175, ng0);
    t1 = (t0 + 2340U);
    t3 = *((char **)t1);
    t1 = (t0 + 10260U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t9, t3, t1, 1);
    t5 = (t9 + 12U);
    t10 = *((unsigned int *)t5);
    t11 = (1U * t10);
    t2 = (10U != t11);
    if (t2 == 1)
        goto LAB13;

LAB14:    t6 = (t0 + 4844);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 10U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

LAB10:    t1 = (t0 + 3532U);
    t4 = *((char **)t1);
    t16 = *((unsigned char *)t4);
    t17 = (t16 == (unsigned char)2);
    t2 = t17;
    goto LAB12;

LAB13:    xsi_size_not_matching(10U, t11, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(183, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t5 = t1;
    memset(t5, (unsigned char)2, 10U);
    t6 = (t0 + 4844);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    goto LAB16;

LAB18:    t1 = (t0 + 3600U);
    t4 = *((char **)t1);
    t16 = *((unsigned char *)t4);
    t17 = (t16 == (unsigned char)2);
    t2 = t17;
    goto LAB20;

}

static void work_a_0863149466_3212880686_p_1(char *t0)
{
    char t7[16];
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(191, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t0 + 10244U);
    t3 = (t0 + 3464U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t2, t1, t5);
    if (t6 != 0)
        goto LAB3;

LAB4:
LAB5:    t14 = (t0 + 2248U);
    t15 = *((char **)t14);
    t14 = (t0 + 10244U);
    t16 = (t0 + 3464U);
    t17 = *((char **)t16);
    t18 = *((int *)t17);
    t16 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t13, t15, t14, t18);
    t19 = (t0 + 4880);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t16, 10U);
    xsi_driver_first_trans_fast_port(t19);

LAB2:    t24 = (t0 + 4648);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t7, 0, 10);
    t8 = (t0 + 4880);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 10U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0863149466_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(194, ng0);

LAB3:    t1 = (t0 + 2340U);
    t2 = *((char **)t1);
    t1 = (t0 + 4916);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4656);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0863149466_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0863149466_3212880686_p_0,(void *)work_a_0863149466_3212880686_p_1,(void *)work_a_0863149466_3212880686_p_2};
	xsi_register_didat("work_a_0863149466_3212880686", "isim/vga_decoder_test_tb_isim_beh.exe.sim/work/a_0863149466_3212880686.didat");
	xsi_register_executes(pe);
}
