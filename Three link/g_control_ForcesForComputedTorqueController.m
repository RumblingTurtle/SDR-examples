function out1 = g_control_ForcesForComputedTorqueController(in1,in2)
%G_CONTROL_FORCESFORCOMPUTEDTORQUECONTROLLER
%    OUT1 = G_CONTROL_FORCESFORCOMPUTEDTORQUECONTROLLER(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    30-Sep-2020 16:32:24

q1 = in1(1,:);
q2 = in1(2,:);
q3 = in1(3,:);
v1 = in2(1,:);
v2 = in2(2,:);
v3 = in2(3,:);
t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = sin(q1);
t6 = sin(q2);
t7 = sin(q3);
t8 = t2.*t7.*(1.8e+1./5.0);
t9 = t4.*t5.*(1.8e+1./5.0);
t10 = t3.*t7.*(1.8e+1./5.0);
t11 = t4.*t6.*(1.8e+1./5.0);
t12 = t2.*t6.*(5.4e+1./5.0);
t13 = t3.*t5.*(5.4e+1./5.0);
t14 = -t9;
t15 = -t11;
t16 = -t13;
t17 = t8+t14;
t18 = t10+t15;
t19 = t12+t16;
t20 = (t17.*v1)./2.0;
t21 = (t17.*v3)./2.0;
t22 = (t18.*v2)./2.0;
t23 = (t18.*v3)./2.0;
t24 = (t19.*v1)./2.0;
t25 = (t19.*v2)./2.0;
t26 = -t21;
t27 = -t23;
t28 = -t25;
t29 = t20+t26;
t30 = t22+t27;
t31 = t24+t28;
out1 = [t5.*-2.94e+2+v1+t29.*v3+t31.*v2;t6.*(-8.82e+2./5.0)+v2+t31.*v1+t30.*v3;t7.*(-2.94e+2./5.0)+v3+t29.*v1+t30.*v2];
