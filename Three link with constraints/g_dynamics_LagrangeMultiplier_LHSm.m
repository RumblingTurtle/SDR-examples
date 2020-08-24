function LHSm = g_dynamics_LagrangeMultiplier_LHSm(in1)
%G_DYNAMICS_LAGRANGEMULTIPLIER_LHSM
%    LHSM = G_DYNAMICS_LAGRANGEMULTIPLIER_LHSM(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    12-Jun-2020 18:25:13

q1 = in1(1,:);
q2 = in1(2,:);
q3 = in1(3,:);
t2 = q2.*2.0;
t3 = q2+q3;
t4 = cos(t3);
t5 = cos(q2);
t6 = cos(q3);
t7 = t6.*(1.8e1./5.0);
t8 = t7+1.4e1./5.0;
t9 = sin(t3);
t10 = cos(q1);
t11 = t4.*(3.0./5.0);
t12 = sin(q1);
t13 = t4+t5+1.0;
t14 = t12.*t13.*(3.0./5.0);
t15 = sin(q2);
t16 = t9+t15;
t17 = t10.*t16.*(3.0./5.0);
t18 = t9.*t10.*(3.0./5.0);
LHSm = reshape([t4.*(3.6e1./5.0)+t5.*(1.08e2./5.0)+t7+cos(q3.*2.0+t2).*(9.0./1.0e1)+cos(q3+t2).*(1.8e1./5.0)+cos(t2).*(9.0./2.0)+1.23e2./5.0,0.0,0.0,0.0,-t14,0.0,t6.*(3.6e1./5.0)+6.4e1./5.0,t8,t5.*(3.0./5.0)+t11,-t17,0.0,t8,1.4e1./5.0,t11,-t18,0.0,t4.*(-3.0./5.0)-t5.*(3.0./5.0),t4.*(-3.0./5.0),0.0,0.0,t14,t17,t18,0.0,0.0],[5,5]);