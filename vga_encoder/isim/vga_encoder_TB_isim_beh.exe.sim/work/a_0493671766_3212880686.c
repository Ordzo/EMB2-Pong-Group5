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
static const char *ng0 = "/home/student/Dropbox/Robotteknologi - Universitetet/8. Semester/EMB3/vga_encoder/vga_generator.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3307759752501467860_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3307759752501503797_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3307766492664532561_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3307766492666904403_1035706684(char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_0493671766_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    int t11;
    int t12;
    int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 10056);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 10280);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 6528U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 6528U);
    t6 = *((char **)t2);
    t11 = *((int *)t6);
    t2 = (t0 + 3528U);
    t7 = *((char **)t2);
    t12 = *((int *)t7);
    t13 = (t12 - 1);
    t14 = (t11 >= t13);
    if (t14 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 6528U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 + 1);
    t1 = (t0 + 6528U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t12;

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB10:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2472U);
    t8 = *((char **)t2);
    t15 = *((unsigned char *)t8);
    t16 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t15);
    t2 = (t0 + 10280);
    t17 = (t2 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t16;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 6528U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(133, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 10344);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 10U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 10408);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 10U);
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

}

static void work_a_0493671766_3212880686_p_1(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(194, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 18160U);
    t3 = (t0 + 4248U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 - 1);
    t7 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t2, t1, t6);
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB7:    t20 = xsi_get_transient_memory(10U);
    memset(t20, 0, 10U);
    t21 = t20;
    memset(t21, (unsigned char)2, 10U);
    t22 = (t0 + 10472);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t20, 10U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 10072);
    *((int *)t27) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 2632U);
    t9 = *((char **)t3);
    t3 = (t0 + 18160U);
    t10 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t8, t9, t3, 1);
    t11 = (t8 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    t14 = (10U != t13);
    if (t14 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 10472);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 10U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

LAB5:    xsi_size_not_matching(10U, t13, 0);
    goto LAB6;

LAB8:    goto LAB2;

}

static void work_a_0493671766_3212880686_p_2(char *t0)
{
    char t15[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned char t14;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(197, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 18160U);
    t4 = (t0 + 4248U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t7 = (t6 - 1);
    t8 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t3, t2, t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t27 = (t0 + 2632U);
    t28 = *((char **)t27);
    t27 = (t0 + 18160U);
    t29 = (t0 + 4248U);
    t30 = *((char **)t29);
    t31 = *((int *)t30);
    t32 = (t31 - 1);
    t33 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t28, t27, t32);
    if (t33 != 0)
        goto LAB10;

LAB11:
LAB12:    t40 = (t0 + 2952U);
    t41 = *((char **)t40);
    t40 = (t0 + 10536);
    t42 = (t40 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t41, 10U);
    xsi_driver_first_trans_fast(t40);

LAB2:    t46 = (t0 + 10088);
    *((int *)t46) = 1;

LAB1:    return;
LAB3:    t10 = (t0 + 2952U);
    t16 = *((char **)t10);
    t10 = (t0 + 18192U);
    t17 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t15, t16, t10, 1);
    t18 = (t15 + 12U);
    t19 = *((unsigned int *)t18);
    t20 = (1U * t19);
    t21 = (10U != t20);
    if (t21 == 1)
        goto LAB8;

LAB9:    t22 = (t0 + 10536);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t17, 10U);
    xsi_driver_first_trans_fast(t22);
    goto LAB2;

LAB5:    t4 = (t0 + 2952U);
    t9 = *((char **)t4);
    t4 = (t0 + 18192U);
    t10 = (t0 + 4968U);
    t11 = *((char **)t10);
    t12 = *((int *)t11);
    t13 = (t12 - 1);
    t14 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t9, t4, t13);
    t1 = t14;
    goto LAB7;

LAB8:    xsi_size_not_matching(10U, t20, 0);
    goto LAB9;

LAB10:    t29 = xsi_get_transient_memory(10U);
    memset(t29, 0, 10U);
    t34 = t29;
    memset(t34, (unsigned char)2, 10U);
    t35 = (t0 + 10536);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t29, 10U);
    xsi_driver_first_trans_fast(t35);
    goto LAB2;

LAB13:    goto LAB2;

}

static void work_a_0493671766_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(202, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 18160U);
    t3 = (t0 + 3768U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t2, t1, t5);
    if (t6 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 10600);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 10104);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 10600);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0493671766_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    int t11;
    int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    int t19;
    int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(203, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 18160U);
    t4 = (t0 + 3888U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = (t0 + 3768U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t9 = (t6 + t8);
    t4 = (t0 + 4008U);
    t10 = *((char **)t4);
    t11 = *((int *)t10);
    t12 = (t9 + t11);
    t13 = ieee_p_1242562249_sub_3307766492666904403_1035706684(IEEE_P_1242562249, t3, t2, t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 2632U);
    t14 = *((char **)t4);
    t4 = (t0 + 18160U);
    t15 = (t0 + 3888U);
    t16 = *((char **)t15);
    t17 = *((int *)t16);
    t15 = (t0 + 3768U);
    t18 = *((char **)t15);
    t19 = *((int *)t18);
    t20 = (t17 + t19);
    t21 = ieee_p_1242562249_sub_3307766492664532561_1035706684(IEEE_P_1242562249, t14, t4, t20);
    t1 = t21;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t26 = (t0 + 10664);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t26);

LAB2:    t31 = (t0 + 10120);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t15 = (t0 + 10664);
    t22 = (t15 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0493671766_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(205, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 18192U);
    t3 = (t0 + 4368U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = ieee_p_1242562249_sub_3307759752501467860_1035706684(IEEE_P_1242562249, t2, t1, t5);
    if (t6 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 10728);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 10136);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 10728);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0493671766_3212880686_p_6(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    int t11;
    int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    int t19;
    int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(206, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t2 = (t0 + 18192U);
    t4 = (t0 + 4368U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = (t0 + 4608U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t9 = (t6 + t8);
    t4 = (t0 + 4728U);
    t10 = *((char **)t4);
    t11 = *((int *)t10);
    t12 = (t9 + t11);
    t13 = ieee_p_1242562249_sub_3307766492666904403_1035706684(IEEE_P_1242562249, t3, t2, t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 2952U);
    t14 = *((char **)t4);
    t4 = (t0 + 18192U);
    t15 = (t0 + 4368U);
    t16 = *((char **)t15);
    t17 = *((int *)t16);
    t15 = (t0 + 4608U);
    t18 = *((char **)t15);
    t19 = *((int *)t18);
    t20 = (t17 + t19);
    t21 = ieee_p_1242562249_sub_3307766492664532561_1035706684(IEEE_P_1242562249, t14, t4, t20);
    t1 = t21;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t26 = (t0 + 10792);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t26);

LAB2:    t31 = (t0 + 10152);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t15 = (t0 + 10792);
    t22 = (t15 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0493671766_3212880686_p_7(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    int t34;
    int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(209, ng0);
    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t4 = (t0 + 18160U);
    t6 = (t0 + 5088U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t6 = (t0 + 4128U);
    t9 = *((char **)t6);
    t10 = *((int *)t9);
    t11 = (t8 + t10);
    t12 = ieee_p_1242562249_sub_3307766492666904403_1035706684(IEEE_P_1242562249, t5, t4, t11);
    if (t12 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t43 = xsi_get_transient_memory(3U);
    memset(t43, 0, 3U);
    t44 = t43;
    memset(t44, (unsigned char)2, 3U);
    t45 = (t0 + 10856);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t43, 3U);
    xsi_driver_first_trans_fast_port(t45);

LAB2:    t50 = (t0 + 10168);
    *((int *)t50) = 1;

LAB1:    return;
LAB3:    t30 = xsi_get_transient_memory(3U);
    memset(t30, 0, 3U);
    t37 = t30;
    memset(t37, (unsigned char)3, 3U);
    t38 = (t0 + 10856);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t30, 3U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB5:    t22 = (t0 + 2952U);
    t29 = *((char **)t22);
    t22 = (t0 + 18192U);
    t30 = (t0 + 5448U);
    t31 = *((char **)t30);
    t32 = *((int *)t31);
    t30 = (t0 + 4848U);
    t33 = *((char **)t30);
    t34 = *((int *)t33);
    t35 = (t32 + t34);
    t36 = ieee_p_1242562249_sub_3307766492664532561_1035706684(IEEE_P_1242562249, t29, t22, t35);
    t1 = t36;
    goto LAB7;

LAB8:    t14 = (t0 + 2952U);
    t21 = *((char **)t14);
    t14 = (t0 + 18192U);
    t22 = (t0 + 5328U);
    t23 = *((char **)t22);
    t24 = *((int *)t23);
    t22 = (t0 + 4848U);
    t25 = *((char **)t22);
    t26 = *((int *)t25);
    t27 = (t24 + t26);
    t28 = ieee_p_1242562249_sub_3307766492666904403_1035706684(IEEE_P_1242562249, t21, t14, t27);
    t2 = t28;
    goto LAB10;

LAB11:    t6 = (t0 + 2632U);
    t13 = *((char **)t6);
    t6 = (t0 + 18160U);
    t14 = (t0 + 5208U);
    t15 = *((char **)t14);
    t16 = *((int *)t15);
    t14 = (t0 + 4128U);
    t17 = *((char **)t14);
    t18 = *((int *)t17);
    t19 = (t16 + t18);
    t20 = ieee_p_1242562249_sub_3307766492664532561_1035706684(IEEE_P_1242562249, t13, t6, t19);
    t3 = t20;
    goto LAB13;

LAB15:    goto LAB2;

}

static void work_a_0493671766_3212880686_p_8(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    int t34;
    int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(216, ng0);
    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t4 = (t0 + 18160U);
    t6 = (t0 + 5568U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t6 = (t0 + 4128U);
    t9 = *((char **)t6);
    t10 = *((int *)t9);
    t11 = (t8 + t10);
    t12 = ieee_p_1242562249_sub_3307766492666904403_1035706684(IEEE_P_1242562249, t5, t4, t11);
    if (t12 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t43 = xsi_get_transient_memory(3U);
    memset(t43, 0, 3U);
    t44 = t43;
    memset(t44, (unsigned char)2, 3U);
    t45 = (t0 + 10920);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t43, 3U);
    xsi_driver_first_trans_fast_port(t45);

LAB2:    t50 = (t0 + 10184);
    *((int *)t50) = 1;

LAB1:    return;
LAB3:    t30 = xsi_get_transient_memory(3U);
    memset(t30, 0, 3U);
    t37 = t30;
    memset(t37, (unsigned char)3, 3U);
    t38 = (t0 + 10920);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t30, 3U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB5:    t22 = (t0 + 2952U);
    t29 = *((char **)t22);
    t22 = (t0 + 18192U);
    t30 = (t0 + 5928U);
    t31 = *((char **)t30);
    t32 = *((int *)t31);
    t30 = (t0 + 4848U);
    t33 = *((char **)t30);
    t34 = *((int *)t33);
    t35 = (t32 + t34);
    t36 = ieee_p_1242562249_sub_3307766492664532561_1035706684(IEEE_P_1242562249, t29, t22, t35);
    t1 = t36;
    goto LAB7;

LAB8:    t14 = (t0 + 2952U);
    t21 = *((char **)t14);
    t14 = (t0 + 18192U);
    t22 = (t0 + 5808U);
    t23 = *((char **)t22);
    t24 = *((int *)t23);
    t22 = (t0 + 4848U);
    t25 = *((char **)t22);
    t26 = *((int *)t25);
    t27 = (t24 + t26);
    t28 = ieee_p_1242562249_sub_3307766492666904403_1035706684(IEEE_P_1242562249, t21, t14, t27);
    t2 = t28;
    goto LAB10;

LAB11:    t6 = (t0 + 2632U);
    t13 = *((char **)t6);
    t6 = (t0 + 18160U);
    t14 = (t0 + 5688U);
    t15 = *((char **)t14);
    t16 = *((int *)t15);
    t14 = (t0 + 4128U);
    t17 = *((char **)t14);
    t18 = *((int *)t17);
    t19 = (t16 + t18);
    t20 = ieee_p_1242562249_sub_3307766492664532561_1035706684(IEEE_P_1242562249, t13, t6, t19);
    t3 = t20;
    goto LAB13;

LAB15:    goto LAB2;

}

static void work_a_0493671766_3212880686_p_9(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    int t34;
    int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(223, ng0);
    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t4 = (t0 + 18160U);
    t6 = (t0 + 6048U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t6 = (t0 + 4128U);
    t9 = *((char **)t6);
    t10 = *((int *)t9);
    t11 = (t8 + t10);
    t12 = ieee_p_1242562249_sub_3307766492666904403_1035706684(IEEE_P_1242562249, t5, t4, t11);
    if (t12 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t43 = xsi_get_transient_memory(3U);
    memset(t43, 0, 3U);
    t44 = t43;
    memset(t44, (unsigned char)2, 3U);
    t45 = (t0 + 10984);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t43, 3U);
    xsi_driver_first_trans_fast_port(t45);

LAB2:    t50 = (t0 + 10200);
    *((int *)t50) = 1;

LAB1:    return;
LAB3:    t30 = xsi_get_transient_memory(3U);
    memset(t30, 0, 3U);
    t37 = t30;
    memset(t37, (unsigned char)3, 3U);
    t38 = (t0 + 10984);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t30, 3U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB5:    t22 = (t0 + 2952U);
    t29 = *((char **)t22);
    t22 = (t0 + 18192U);
    t30 = (t0 + 6408U);
    t31 = *((char **)t30);
    t32 = *((int *)t31);
    t30 = (t0 + 4848U);
    t33 = *((char **)t30);
    t34 = *((int *)t33);
    t35 = (t32 + t34);
    t36 = ieee_p_1242562249_sub_3307766492664532561_1035706684(IEEE_P_1242562249, t29, t22, t35);
    t1 = t36;
    goto LAB7;

LAB8:    t14 = (t0 + 2952U);
    t21 = *((char **)t14);
    t14 = (t0 + 18192U);
    t22 = (t0 + 6288U);
    t23 = *((char **)t22);
    t24 = *((int *)t23);
    t22 = (t0 + 4848U);
    t25 = *((char **)t22);
    t26 = *((int *)t25);
    t27 = (t24 + t26);
    t28 = ieee_p_1242562249_sub_3307766492666904403_1035706684(IEEE_P_1242562249, t21, t14, t27);
    t2 = t28;
    goto LAB10;

LAB11:    t6 = (t0 + 2632U);
    t13 = *((char **)t6);
    t6 = (t0 + 18160U);
    t14 = (t0 + 6168U);
    t15 = *((char **)t14);
    t16 = *((int *)t15);
    t14 = (t0 + 4128U);
    t17 = *((char **)t14);
    t18 = *((int *)t17);
    t19 = (t16 + t18);
    t20 = ieee_p_1242562249_sub_3307766492664532561_1035706684(IEEE_P_1242562249, t13, t6, t19);
    t3 = t20;
    goto LAB13;

LAB15:    goto LAB2;

}


extern void work_a_0493671766_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0493671766_3212880686_p_0,(void *)work_a_0493671766_3212880686_p_1,(void *)work_a_0493671766_3212880686_p_2,(void *)work_a_0493671766_3212880686_p_3,(void *)work_a_0493671766_3212880686_p_4,(void *)work_a_0493671766_3212880686_p_5,(void *)work_a_0493671766_3212880686_p_6,(void *)work_a_0493671766_3212880686_p_7,(void *)work_a_0493671766_3212880686_p_8,(void *)work_a_0493671766_3212880686_p_9};
	xsi_register_didat("work_a_0493671766_3212880686", "isim/vga_encoder_TB_isim_beh.exe.sim/work/a_0493671766_3212880686.didat");
	xsi_register_executes(pe);
}
