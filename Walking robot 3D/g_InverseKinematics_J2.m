function J2 = g_InverseKinematics_J2(in1,in2)
%G_INVERSEKINEMATICS_J2
%    J2 = G_INVERSEKINEMATICS_J2(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Oct-2017 22:56:40

q4 = in1(4,:);
q5 = in1(5,:);
q6 = in1(6,:);
q7 = in1(7,:);
q8 = in1(8,:);
q9 = in1(9,:);
q10 = in1(10,:);
q11 = in1(11,:);
v4 = in2(4,:);
v5 = in2(5,:);
v6 = in2(6,:);
v7 = in2(7,:);
v8 = in2(8,:);
v9 = in2(9,:);
v10 = in2(10,:);
v11 = in2(11,:);
t2 = sin(q4);
t3 = sin(q6);
t4 = cos(q4);
t5 = cos(q6);
t6 = sin(q5);
t7 = cos(q10);
t8 = t7+3.0;
t9 = cos(q5);
t10 = sin(q10);
t11 = t2.*t3;
t12 = t4.*t5.*t6;
t13 = t11+t12;
t14 = t4.*t9.*3.0;
t15 = t4.*t7.*t9;
t66 = t6.*t10;
t16 = t14+t15-t66;
t17 = t4.*t5;
t18 = t2.*t3.*t6;
t19 = t17+t18;
t20 = sin(q7);
t21 = sin(q9);
t22 = cos(q7);
t23 = cos(q9);
t24 = sin(q8);
t25 = cos(q11);
t26 = t25+3.0;
t27 = cos(q8);
t28 = sin(q11);
t29 = t20.*t21;
t30 = t22.*t23.*t24;
t31 = t29+t30;
t32 = t22.*t27.*3.0;
t33 = t22.*t25.*t27;
t87 = t24.*t28;
t34 = t32+t33-t87;
t35 = t22.*t23;
t36 = t20.*t21.*t24;
t37 = t35+t36;
t38 = t7.*t13.*(1.0./2.4e1);
t39 = t5.*t9.*t10.*(1.0./2.4e1);
t40 = t2.*t5;
t67 = t3.*t4.*t6;
t41 = t40-t67;
t42 = t10.*t41.*(1.0./2.4e1);
t43 = t3.*t7.*t9.*(1.0./2.4e1);
t44 = t42+t43;
t45 = t6.*t7;
t46 = t4.*t9.*t10;
t47 = t45+t46;
t48 = t3.*t4;
t62 = t2.*t5.*t6;
t49 = t48-t62;
t50 = t25.*t31.*(1.0./2.4e1);
t51 = t23.*t27.*t28.*(1.0./2.4e1);
t52 = t20.*t23;
t88 = t21.*t22.*t24;
t53 = t52-t88;
t54 = t28.*t53.*(1.0./2.4e1);
t55 = t21.*t25.*t27.*(1.0./2.4e1);
t56 = t54+t55;
t57 = t24.*t25;
t58 = t22.*t27.*t28;
t59 = t57+t58;
t60 = t21.*t22;
t83 = t20.*t23.*t24;
t61 = t60-t83;
t63 = t7+1.0;
t64 = t9.*t10;
t65 = t4.*t6.*t7;
t68 = t4.*t9;
t69 = t15-t66+t68;
t70 = t7.*t13.*(1.0./2.0);
t71 = t5.*t9.*t10.*(1.0./2.0);
t72 = t10.*t41.*(1.0./2.0);
t73 = t3.*t7.*t9.*(1.0./2.0);
t74 = t72+t73;
t75 = t4.*t6;
t76 = t64+t65+t75;
t77 = t10.*t13.*(1.0./2.0);
t78 = t77-t5.*t7.*t9.*(1.0./2.0);
t79 = t7.*t41.*(1.0./2.0);
t80 = t7.*t9.*(1.0./2.0);
t81 = t80-t4.*t6.*t10.*(1.0./2.0);
t82 = t4.*t7.*t9.*(1.0./2.0);
t84 = t25+1.0;
t85 = t27.*t28;
t86 = t22.*t24.*t25;
t89 = t22.*t27;
t90 = t33-t87+t89;
t91 = t25.*t31.*(1.0./2.0);
t92 = t23.*t27.*t28.*(1.0./2.0);
t93 = t28.*t53.*(1.0./2.0);
t94 = t21.*t25.*t27.*(1.0./2.0);
t95 = t93+t94;
t96 = t22.*t24;
t97 = t85+t86+t96;
t98 = t28.*t31.*(1.0./2.0);
t99 = t98-t23.*t25.*t27.*(1.0./2.0);
t100 = t25.*t53.*(1.0./2.0);
t101 = t25.*t27.*(1.0./2.0);
t102 = t101-t22.*t24.*t28.*(1.0./2.0);
t103 = t22.*t25.*t27.*(1.0./2.0);
J2 = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t8.*t13.*v4.*(1.0./2.4e1)-t8.*t19.*v6.*(1.0./2.4e1)+t10.*t49.*v10.*(1.0./2.4e1)+t2.*t5.*t8.*t9.*v5.*(1.0./2.4e1),t10.*t49.*v10.*(1.0./2.0)+t13.*t63.*v4.*(1.0./2.0)-t19.*t63.*v6.*(1.0./2.0)+t2.*t5.*t9.*t63.*v5.*(1.0./2.0),t10.*t19.*v10.*(-1.0./2.0)-t41.*t63.*v4.*(1.0./2.0)-t49.*t63.*v6.*(1.0./2.0)+t2.*t3.*t9.*t63.*v5.*(1.0./2.0),t2.*t9.*t10.*v10.*(-1.0./2.0)-t2.*t6.*t63.*v5.*(1.0./2.0)+t4.*t9.*t63.*v4.*(1.0./2.0),0.0,0.0,0.0,t3.*t16.*v6.*(1.0./2.4e1)+t5.*t47.*v10.*(1.0./2.4e1)+t5.*v5.*(t64+t65+t4.*t6.*3.0).*(1.0./2.4e1)+t2.*t5.*t8.*t9.*v4.*(1.0./2.4e1),t5.*t47.*v10.*(1.0./2.0)+t3.*t69.*v6.*(1.0./2.0)+t5.*t76.*v5.*(1.0./2.0)+t2.*t5.*t9.*t63.*v4.*(1.0./2.0),t3.*t47.*v10.*(1.0./2.0)-t5.*t69.*v6.*(1.0./2.0)+t3.*t76.*v5.*(1.0./2.0)+t2.*t3.*t9.*t63.*v4.*(1.0./2.0),v5.*(t82+t4.*t9.*(1.0./2.0)-t6.*t10.*(1.0./2.0))+t81.*v10-t2.*t6.*t63.*v4.*(1.0./2.0),0.0,0.0,0.0,v6.*(t38+t39+t2.*t3.*(1.0./8.0)+t4.*t5.*t6.*(1.0./8.0))+t44.*v10+t3.*t16.*v5.*(1.0./2.4e1)-t8.*t19.*v4.*(1.0./2.4e1),v6.*(t70+t71+t2.*t3.*(1.0./2.0)+t4.*t5.*t6.*(1.0./2.0))+t74.*v10+t3.*t69.*v5.*(1.0./2.0)-t19.*t63.*v4.*(1.0./2.0),t78.*v10-v6.*(t79+t2.*t5.*(1.0./2.0)-t3.*t4.*t6.*(1.0./2.0)-t3.*t9.*t10.*(1.0./2.0))-t5.*t69.*v5.*(1.0./2.0)-t49.*t63.*v4.*(1.0./2.0),0.0,0.0,0.0,0.0,t26.*t31.*v7.*(1.0./2.4e1)-t26.*t37.*v9.*(1.0./2.4e1)+t28.*t61.*v11.*(1.0./2.4e1)+t20.*t23.*t26.*t27.*v8.*(1.0./2.4e1),0.0,0.0,0.0,t28.*t61.*v11.*(1.0./2.0)+t31.*t84.*v7.*(1.0./2.0)-t37.*t84.*v9.*(1.0./2.0)+t20.*t23.*t27.*t84.*v8.*(1.0./2.0),t28.*t37.*v11.*(-1.0./2.0)-t53.*t84.*v7.*(1.0./2.0)-t61.*t84.*v9.*(1.0./2.0)+t20.*t21.*t27.*t84.*v8.*(1.0./2.0),t20.*t27.*t28.*v11.*(-1.0./2.0)-t20.*t24.*t84.*v8.*(1.0./2.0)+t22.*t27.*t84.*v7.*(1.0./2.0),t21.*t34.*v9.*(1.0./2.4e1)+t23.*t59.*v11.*(1.0./2.4e1)+t23.*v8.*(t85+t86+t22.*t24.*3.0).*(1.0./2.4e1)+t20.*t23.*t26.*t27.*v7.*(1.0./2.4e1),0.0,0.0,0.0,t23.*t59.*v11.*(1.0./2.0)+t21.*t90.*v9.*(1.0./2.0)+t23.*t97.*v8.*(1.0./2.0)+t20.*t23.*t27.*t84.*v7.*(1.0./2.0),t21.*t59.*v11.*(1.0./2.0)-t23.*t90.*v9.*(1.0./2.0)+t21.*t97.*v8.*(1.0./2.0)+t20.*t21.*t27.*t84.*v7.*(1.0./2.0),v8.*(t103+t22.*t27.*(1.0./2.0)-t24.*t28.*(1.0./2.0))+t102.*v11-t20.*t24.*t84.*v7.*(1.0./2.0),v9.*(t50+t51+t20.*t21.*(1.0./8.0)+t22.*t23.*t24.*(1.0./8.0))+t56.*v11+t21.*t34.*v8.*(1.0./2.4e1)-t26.*t37.*v7.*(1.0./2.4e1),0.0,0.0,0.0,v9.*(t91+t92+t20.*t21.*(1.0./2.0)+t22.*t23.*t24.*(1.0./2.0))+t95.*v11+t21.*t90.*v8.*(1.0./2.0)-t37.*t84.*v7.*(1.0./2.0),t99.*v11-v9.*(t100+t20.*t23.*(1.0./2.0)-t21.*t22.*t24.*(1.0./2.0)-t21.*t27.*t28.*(1.0./2.0))-t23.*t90.*v8.*(1.0./2.0)-t61.*t84.*v7.*(1.0./2.0),0.0,v10.*(t38+t39)+t44.*v6+t5.*t47.*v5.*(1.0./2.4e1)+t10.*t49.*v4.*(1.0./2.4e1),v10.*(t70+t71)+t74.*v6+t5.*t47.*v5.*(1.0./2.0)+t10.*t49.*v4.*(1.0./2.0),t78.*v6-v10.*(t79-t3.*t9.*t10.*(1.0./2.0))-t10.*t19.*v4.*(1.0./2.0)+t3.*t47.*v5.*(1.0./2.0),t81.*v5+v10.*(t82-t6.*t10.*(1.0./2.0))-t2.*t9.*t10.*v4.*(1.0./2.0),0.0,0.0,0.0,v11.*(t50+t51)+t56.*v9+t23.*t59.*v8.*(1.0./2.4e1)+t28.*t61.*v7.*(1.0./2.4e1),0.0,0.0,0.0,v11.*(t91+t92)+t95.*v9+t23.*t59.*v8.*(1.0./2.0)+t28.*t61.*v7.*(1.0./2.0),t99.*v9-v11.*(t100-t21.*t27.*t28.*(1.0./2.0))-t28.*t37.*v7.*(1.0./2.0)+t21.*t59.*v8.*(1.0./2.0),t102.*v8+v11.*(t103-t24.*t28.*(1.0./2.0))-t20.*t27.*t28.*v7.*(1.0./2.0)],[7,11]);