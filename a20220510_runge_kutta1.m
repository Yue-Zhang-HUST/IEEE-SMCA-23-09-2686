function [t,x]=a20220510_runge_kutta1(x0,h,a,b)%参数表顺序依次是微分方程组的函数名称，初始值向量，步长，时间起点，时间终点（参数形式参考了ode45函数）
n=floor((b-a)/h);%求步数
t(1)=a;%时间起点
x(1,:)=x0;%赋初值，可以是向量，但是要注意维数
function xout=a_20220420tradeYue2Bayesiangame2020_5agentss(t,x)
%global kappa1;
%global kappa2;
%global kappa3;
global A;
global B1;
global B2;
global B3;
global B4;
global B5;
% global Q433;% global Q43;% global Q45;% global Q455;
% global Q522;% global Q52;% global Q54;% global Q544;
global d1;
global d2;
global d3;
global d4;
global d5;
global g1;
global g2;
global g3;
global g4;
global g5;
global i2;
global JT1;
global JT2;
global JT3;
global JT4;
global JT5;
global JJT1;
global JJT2;
global JJT3;
global JJT4;
global JJT5;
global timet2;
%a1=3;%a2=3;%a3=3;%a5=3;%a6=1;%a7=1;%a8=1;%a9=1;%a10=1;
%delta1=[x(1) x(2)]';%delta2=[x(3) x(4)]';%delta3=[x(5) x(6)]';
%delta4=[x(7) x(8)]';%delta5=[x(9) x(10)]';
x1=[x(1) x(2)]';
x2=[x(3) x(4)]';
x3=[x(5) x(6)]';
x4=[x(7) x(8)]';
x5=[x(9) x(10)]';
x00=[x(11) x(12)]';

delta1=x1-x3+x1-x00;
delta2=x2-x1+x2-x3;
delta3=x3-x1+x3-x5;
delta4=x4-x2+x4-x5;
delta5=x5-x3+x5-x4;

agent2=[0.1
0.1078
0.1206
0.1384
0.1612
0.189
0.2218
0.2596
0.3024
0.3502
0.403
0.4608
0.5236
0.5914
0.6642
0.742
0.8248
0.9126
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
];
agent3=[0.1
0.1085
0.119
0.1315
0.146
0.1625
0.181
0.2015
0.224
0.273
0.326
0.383
0.444
0.509
0.578
0.651
0.728
0.809
0.894
0.983
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
];
agent4=[0.1
0.08
0.075
0.073
0.072
0.0865
0.1025
0.12
0.139
0.1595
0.1815
0.205
0.23
0.2565
0.2845
0.314
0.345
0.41
0.478
0.549
0.623
0.7
0.78
0.863
0.949
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
];
agent5=[0.1
0.0815
0.065
0.0505
0.037
0.0255
0.015
0.0065
0
0.0001125
0.000275
0.0004875
0.0008
0.0036125
0.008925
0.0167375
0.02705
0.052675
0.0833
0.118925
0.15955
0.205175
0.2558
0.311425
0.37205
0.437675
0.5083
0.583925
0.66455
0.750175
0.8408
0.936425
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
];


if t<1/2 && t>=(1-1)/2
prob1=1;
prob2=agent2(1);
prob3=agent3(1);
prob4=agent4(1);
prob5=agent5(1);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<2/2 &&t>=(2-1)/2
prob1=1;
prob2=agent2(2);
prob3=agent3(2);
prob4=agent4(2);
prob5=agent5(2);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end

if t<3/2 && t>=(3-1)/2
prob1=1;
prob2=agent2(3);
prob3=agent3(3);
prob4=agent4(3);
prob5=agent5(3);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<4/2 && t>=(4-1)/2
prob1=1;
prob2=agent2(4);
prob3=agent3(4);
prob4=agent4(4);
prob5=agent5(4);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<5/2 && t>=(5-1)/2
prob1=1;
prob2=agent2(5);
prob3=agent3(5);
prob4=agent4(5);
prob5=agent5(5);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<6/2 && t>=(6-1)/2
prob1=1;
prob2=agent2(6);
prob3=agent3(6);
prob4=agent4(6);
prob5=agent5(6);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<7/2 && t>=(7-1)/2
prob1=1;
prob2=agent2(7);
prob3=agent3(7);
prob4=agent4(7);
prob5=agent5(7);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<8/2 && t>=(8-1)/2
prob1=1;
prob2=agent2(8);
prob3=agent3(8);
prob4=agent4(8);
prob5=agent5(8);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<9/2 && t>=(9-1)/2
prob1=1;
prob2=agent2(9);
prob3=agent3(9);
prob4=agent4(9);
prob5=agent5(9);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<10/2 && t>=(10-1)/2
prob1=1;
prob2=agent2(10);
prob3=agent3(10);
prob4=agent4(10);
prob5=agent5(10);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<11/2 && t>=(11-1)/2
prob1=1;
prob2=agent2(11);
prob3=agent3(11);
prob4=agent4(11);
prob5=agent5(11);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<12/2 && t>=(12-1)/2
prob1=1;
prob2=agent2(12);
prob3=agent3(12);
prob4=agent4(12);
prob5=agent5(12);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<13/2 && t>=(13-1)/2
prob1=1;
prob2=agent2(13);
prob3=agent3(13);
prob4=agent4(13);
prob5=agent5(13);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<14/2 && t>=(14-1)/2
prob1=1;
prob2=agent2(14);
prob3=agent3(14);
prob4=agent4(14);
prob5=agent5(14);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<15/2 && t>=(15-1)/2
prob1=1;
prob2=agent2(15);
prob3=agent3(15);
prob4=agent4(15);
prob5=agent5(15);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<16/2 && t>=(16-1)/2
prob1=1;
prob2=agent2(16);
prob3=agent3(16);
prob4=agent4(16);
prob5=agent5(16);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<17/2 && t>=(17-1)/2
prob1=1;
prob2=agent2(17);
prob3=agent3(17);
prob4=agent4(17);
prob5=agent5(17);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<18/2 && t>=(18-1)/2
prob1=1;
prob2=agent2(18);
prob3=agent3(18);
prob4=agent4(18);
prob5=agent5(18);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<19/2 && t>=(19-1)/2
prob1=1;
prob2=agent2(19);
prob3=agent3(19);
prob4=agent4(19);
prob5=agent5(19);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t>=(20-1)/2
prob1=1;
prob2=agent2(20);
prob3=agent3(20);
prob4=agent4(20);
prob5=agent5(20);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<21/2 && t>=(21-1)/2
prob1=1;
prob2=agent2(21);
prob3=agent3(21);
prob4=agent4(21);
prob5=agent5(21);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<22/2 && t>=(22-1)/2
prob1=1;
prob2=agent2(22);
prob3=agent3(22);
prob4=agent4(22);
prob5=agent5(22);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<23/2 && t>=(23-1)/2
prob1=1;
prob2=agent2(23);
prob3=agent3(23);
prob4=agent4(23);
prob5=agent5(23);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<24/2 && t>=(24-1)/2
prob1=1;
prob2=agent2(24);
prob3=agent3(24);
prob4=agent4(24);
prob5=agent5(24);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<25/2 && t>=(25-1)/2
prob1=1;
prob2=agent2(25);
prob3=agent3(25);
prob4=agent4(25);
prob5=agent5(25);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<26/2 && t>=(26-1)/2
prob1=1;
prob2=agent2(26);
prob3=agent3(26);
prob4=agent4(26);
prob5=agent5(26);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<27/2 && t>=(27-1)/2
prob1=1;
prob2=agent2(27);
prob3=agent3(27);
prob4=agent4(27);
prob5=agent5(27);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<28/2 && t>=(28-1)/2
prob1=1;
prob2=agent2(28);
prob3=agent3(28);
prob4=agent4(28);
prob5=agent5(28);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<29/2 && t>=(29-1)/2
prob1=1;
prob2=agent2(29);
prob3=agent3(29);
prob4=agent4(29);
prob5=agent5(29);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<30/2 && t>=(30-1)/2
prob1=1;
prob2=agent2(30);
prob3=agent3(30);
prob4=agent4(30);
prob5=agent5(30);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end

if t<31/2 && t>=(31-1)/2
prob1=1;
prob2=agent2(31);
prob3=agent3(31);
prob4=agent4(31);
prob5=agent5(31);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<32/2 && t>=(32-1)/2
prob1=1;
prob2=agent2(32);
prob3=agent3(32);
prob4=agent4(32);
prob5=agent5(32);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<33/2 && t>=(33-1)/2
prob1=1;
prob2=agent2(33);
prob3=agent3(33);
prob4=agent4(33);
prob5=agent5(33);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<34/2 && t>=(34-1)/2
prob1=1;
prob2=agent2(34);
prob3=agent3(34);
prob4=agent4(34);
prob5=agent5(34);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<35/2 && t>=(35-1)/2
prob1=1;
prob2=agent2(35);
prob3=agent3(35);
prob4=agent4(35);
prob5=agent5(35);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<36/2 && t>=(36-1)/2
prob1=1;
prob2=agent2(36);
prob3=agent3(36);
prob4=agent4(36);
prob5=agent5(36);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<37/2 && t>=(37-1)/2
prob1=1;
prob2=agent2(37);
prob3=agent3(37);
prob4=agent4(37);
prob5=agent5(37);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<38/2 && t>=(38-1)/2
prob1=1;
prob2=agent2(38);
prob3=agent3(38);
prob4=agent4(38);
prob5=agent5(38);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<39/2 && t>=(39-1)/2
prob1=1;
prob2=agent2(39);
prob3=agent3(39);
prob4=agent4(39);
prob5=agent5(39);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<40/2 && t>=(40-1)/2
prob1=1;
prob2=agent2(40);
prob3=agent3(40);
prob4=agent4(40);
prob5=agent5(40);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<41/2 && t>=(41-1)/2
prob1=1;
prob2=agent2(41);
prob3=agent3(41);
prob4=agent4(41);
prob5=agent5(41);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<42/2 && t>=(42-1)/2
prob1=1;
prob2=agent2(42);
prob3=agent3(42);
prob4=agent4(42);
prob5=agent5(42);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<43/2 && t>=(43-1)/2
prob1=1;
prob2=agent2(43);
prob3=agent3(43);
prob4=agent4(43);
prob5=agent5(43);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<44/2 && t>=(44-1)/2
prob1=1;
prob2=agent2(44);
prob3=agent3(44);
prob4=agent4(44);
prob5=agent5(44);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<45/2 && t>=(45-1)/2
prob1=1;
prob2=agent2(45);
prob3=agent3(45);
prob4=agent4(45);
prob5=agent5(45);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<46/2 && t>=(46-1)/2
prob1=1;
prob2=agent2(46);
prob3=agent3(46);
prob4=agent4(46);
prob5=agent5(46);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<47/2 && t>=(47-1)/2
prob1=1;
prob2=agent2(47);
prob3=agent3(47);
prob4=agent4(47);
prob5=agent5(47);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<48/2 && t>=(48-1)/2
prob1=1;
prob2=agent2(48);
prob3=agent3(48);
prob4=agent4(48);
prob5=agent5(48);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<49/2 && t>=(49-1)/2
prob1=1;
prob2=agent2(49);
prob3=agent3(49);
prob4=agent4(49);
prob5=agent5(49);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<50/2 && t>=(50-1)/2
prob1=1;
prob2=agent2(50);
prob3=agent3(50);
prob4=agent4(50);
prob5=agent5(50);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end

if t<51/2 && t>=(51-1)/2
prob1=1;
prob2=agent2(51);
prob3=agent3(51);
prob4=agent4(51);
prob5=agent5(51);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<52/2 && t>=(52-1)/2
prob1=1;
prob2=agent2(52);
prob3=agent3(52);
prob4=agent4(52);
prob5=agent5(52);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<53/2 && t>=(53-1)/2
prob1=1;
prob2=agent2(53);
prob3=agent3(53);
prob4=agent4(53);
prob5=agent5(53);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<54/2 && t>=(54-1)/2
prob1=1;
prob2=agent2(54);
prob3=agent3(54);
prob4=agent4(54);
prob5=agent5(54);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<55/2 && t>=(55-1)/2
prob1=1;
prob2=agent2(55);
prob3=agent3(55);
prob4=agent4(55);
prob5=agent5(55);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<56/2 && t>=(56-1)/2
prob1=1;
prob2=agent2(56);
prob3=agent3(56);
prob4=agent4(56);
prob5=agent5(56);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<57/2 && t>=(57-1)/2
prob1=1;
prob2=agent2(57);
prob3=agent3(57);
prob4=agent4(57);
prob5=agent5(57);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<58/2 && t>=(58-1)/2
prob1=1;
prob2=agent2(58);
prob3=agent3(58);
prob4=agent4(58);
prob5=agent5(58);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<59/2 && t>=(59-1)/2
prob1=1;
prob2=agent2(59);
prob3=agent3(59);
prob4=agent4(59);
prob5=agent5(59);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<60/2 && t>=(60-1)/2
prob1=1;
prob2=agent2(60);
prob3=agent3(60);
prob4=agent4(60);
prob5=agent5(60);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<61/2 && t>=(61-1)/2
prob1=1;
prob2=agent2(61);
prob3=agent3(61);
prob4=agent4(61);
prob5=agent5(61);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<62/2 && t>=(62-1)/2
prob1=1;
prob2=agent2(62);
prob3=agent3(62);
prob4=agent4(62);
prob5=agent5(62);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<63/2 && t>=(63-1)/2
prob1=1;
prob2=agent2(63);
prob3=agent3(63);
prob4=agent4(63);
prob5=agent5(63);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<64/2 && t>=(64-1)/2
prob1=1;
prob2=agent2(64);
prob3=agent3(64);
prob4=agent4(64);
prob5=agent5(64);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<65/2 && t>=(65-1)/2
prob1=1;
prob2=agent2(65);
prob3=agent3(65);
prob4=agent4(65);
prob5=agent5(65);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<66/2 && t>=(66-1)/2
prob1=1;
prob2=agent2(66);
prob3=agent3(66);
prob4=agent4(66);
prob5=agent5(66);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<67/2 && t>=(67-1)/2
prob1=1;
prob2=agent2(67);
prob3=agent3(67);
prob4=agent4(67);
prob5=agent5(67);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<68/2 && t>=(68-1)/2
prob1=1;
prob2=agent2(68);
prob3=agent3(68);
prob4=agent4(68);
prob5=agent5(68);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<69/2 && t>=(69-1)/2
prob1=1;
prob2=agent2(69);
prob3=agent3(69);
prob4=agent4(69);
prob5=agent5(69);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end

if t<70/2 && t>=(70-1)/2
prob1=1;
prob2=agent2(70);
prob3=agent3(70);
prob4=agent4(70);
prob5=agent5(70);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<71/2 && t>=(71-1)/2
prob1=1;
prob2=agent2(71);
prob3=agent3(71);
prob4=agent4(71);
prob5=agent5(71);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<72/2 && t>=(72-1)/2
prob1=1;
prob2=agent2(72);
prob3=agent3(72);
prob4=agent4(72);
prob5=agent5(72);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<73/2 && t>=(73-1)/2
prob1=1;
prob2=agent2(73);
prob3=agent3(73);
prob4=agent4(73);
prob5=agent5(73);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<74/2 && t>=(74-1)/2
prob1=1;
prob2=agent2(74);
prob3=agent3(74);
prob4=agent4(74);
prob5=agent5(74);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<75/2 && t>=(75-1)/2
prob1=1;
prob2=agent2(75);
prob3=agent3(75);
prob4=agent4(75);
prob5=agent5(75);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<76/2 && t>=(76-1)/2
prob1=1;
prob2=agent2(76);
prob3=agent3(76);
prob4=agent4(76);
prob5=agent5(76);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<77/2 && t>=(77-1)/2
prob1=1;
prob2=agent2(77);
prob3=agent3(77);
prob4=agent4(77);
prob5=agent5(77);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<78/2 && t>=(78-1)/2
prob1=1;
prob2=agent2(78);
prob3=agent3(78);
prob4=agent4(78);
prob5=agent5(78);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<79/2 && t>=(79-1)/2
prob1=1;
prob2=agent2(79);
prob3=agent3(79);
prob4=agent4(79);
prob5=agent5(79);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end
if t<80/2 && t>=(80-1)/2
prob1=1;
prob2=agent2(80);
prob3=agent3(80);
prob4=agent4(80);
prob5=agent5(80);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end

if t<81/2 && t>=(81-1)/2
prob1=1;
prob2=agent2(81);
prob3=agent3(81);
prob4=agent4(81);
prob5=agent5(81);
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
u1=-(d1+g1)*inv(R11)*B1'*1*[sqrt((199*prob1+1)*(prob1+1)) 0;0 sqrt((199*prob1+1)*(prob1+1))]*delta1;
u2=-(d2+g2)*inv(R22)*B2'*1*[sqrt((199*prob2+1)*(prob2+1)) 0;0 sqrt((199*prob2+1)*(prob2+1))]*delta2;
u3=-(d3+g3)*inv(R33)*B3'*1*[sqrt((199*prob3+1)*(prob3+1)) 0;0 sqrt((199*prob3+1)*(prob3+1))]*delta3;
u4=-(d4+g4)*inv(R44)*B4'*1*[sqrt((199*prob4+1)*(prob4+1)) 0;0 sqrt((199*prob4+1)*(prob4+1))]*delta4;
u5=-(d5+g5)*inv(R55)*B5'*1*[sqrt((199*prob5+1)*(prob5+1)) 0;0 sqrt((199*prob5+1)*(prob5+1))]*delta5;
end

unew1=u1;
unew2=u2;
unew3=u3;
unew4=u4;
unew5=u5;


prob1=1;
prob2=1;
prob3=1;
prob4=1;
prob5=1;
R11=(20*prob1+10*(1-prob1))*[1 0;0 1];
R22=(20*prob2+10*(1-prob2))*[1 0;0 1];
R33=(20*prob3+10*(1-prob3))*[1 0;0 1];
R44=(20*prob4+10*(1-prob4))*[1 0;0 1];
R55=(20*prob5+10*(1-prob5))*[1 0;0 1];
R12=2*R11;R13=2*R11;R14=2*R11;R15=2*R11; R21=2*R22;R23=2*R22;R24=2*R22;R25=2*R22; R31=2*R33;R32=2*R33;R34=2*R33;R35=2*R33; R41=2*R44;R42=2*R44;R43=2*R44;R45=2*R44; R51=2*R55;R52=2*R55;R53=2*R55;R54=2*R55;
Q11=(80*prob1+0.4*(1-prob1))*[1 0;0 1]; Q22=(80*prob2+0.4*(1-prob2))*[1 0;0 1]; Q33=(80*prob3+0.4*(1-prob3))*[1 0;0 1]; Q44=(80*prob4+0.4*(1-prob4))*[1 0;0 1]; Q55=(80*prob5+0.4*(1-prob5))*[1 0;0 1];  N1=1;N2=2;N3=2;N4=2;N5=2; P1=sqrt((199*prob1+1)*(prob1+1))*[1 0;0 1];P2=sqrt((199*prob2+1)*(prob2+1))*[1 0;0 1];P3=sqrt((199*prob3+1)*(prob3+1))*[1 0;0 1]; P4=sqrt((199*prob4+1)*(prob4+1))*[1 0;0 1];P5=sqrt((199*prob5+1)*(prob5+1))*[1 0;0 1]; Q13=-1*N1*(d3+g3)*P1*inv(R33)*P3;Q133=4*P3*inv(R33)*R13*inv(R33)*P3; Q21=-1*N2*(d1+g1)*P2*inv(R11)*P1;Q211=4*P1*inv(R11)*R21*inv(R11)*P1; Q23=-1*N2*(d3+g3)*P2*inv(R33)*P3;Q233=4*P3*inv(R33)*R23*inv(R33)*P3; Q31=-1*N3*(d1+g1)*P3*inv(R11)*P1;Q311=4*P1*inv(R11)*R31*inv(R11)*P1; Q35=-1*N3*(d5+g5)*P3*inv(R55)*P5;Q355=4*P5*inv(R55)*R35*inv(R55)*P5; Q42=-1*N4*(d2+g2)*P4*inv(R22)*P2;Q422=4*P2*inv(R22)*R42*inv(R22)*P2; Q45=-1*N4*(d5+g5)*P4*inv(R55)*P5;Q455=4*P5*inv(R55)*R45*inv(R55)*P5; Q53=-1*N5*(d3+g3)*P5*inv(R33)*P3;Q533=4*P3*inv(R33)*R53*inv(R33)*P3; Q54=-1*N5*(d4+g4)*P5*inv(R44)*P4;Q544=4*P4*inv(R44)*R54*inv(R44)*P4;
costr1=delta1'*Q11*delta1+delta1'*Q13*delta3+delta1'*Q13*delta3+delta3'*Q133*delta3+u1'*R11*u1-u3'*R13*u3;
costr2=delta2'*Q22*delta2+delta2'*Q21*delta1+delta2'*Q21*delta1+delta1'*Q211*delta1+u2'*R22*u2-u1'*R21*u1+delta2'*Q22*delta2+delta2'*Q23*delta3+delta2'*Q23*delta3+delta3'*Q233*delta3+u2'*R22*u2-u3'*R23*u3;
costr3=delta3'*Q33*delta3+delta3'*Q31*delta1+delta3'*Q31*delta1+delta1'*Q311*delta1+u3'*R33*u3-u1'*R31*u1+delta3'*Q33*delta3+delta3'*Q35*delta5+delta3'*Q35*delta5+delta5'*Q355*delta5+u3'*R33*u3-u5'*R35*u5;
costr4=delta4'*Q44*delta4+delta4'*Q42*delta2+delta4'*Q42*delta2+delta2'*Q422*delta2+u4'*R44*u4-u2'*R42*u2+delta4'*Q44*delta4+delta4'*Q45*delta5+delta4'*Q45*delta5+delta5'*Q455*delta5+u4'*R44*u4-u5'*R45*u5;
costr5=delta5'*Q55*delta5+delta5'*Q53*delta3+delta5'*Q53*delta3+delta3'*Q533*delta3+u5'*R55*u5-u3'*R53*u3+delta5'*Q55*delta5+delta5'*Q54*delta4+delta5'*Q54*delta4+delta4'*Q544*delta4+u5'*R55*u5-u4'*R54*u4;


JT1(1)=0;JT2(1)=0;JT3(1)=0;JT4(1)=0;JT5(1)=0;timet2(1)=0;
timet2(i2+1)=t;
JT1(i2+1)=costr1;JT2(i2+1)=costr2;
 JT3(i2+1)=costr3;JT4(i2+1)=costr4;
 JT5(i2+1)=costr5;
 JJT1(i2+1)=JJT1(i2)+costr1*(timet2(i2+1)-timet2(i2));JJT2(i2+1)=JJT2(i2)+costr2*(timet2(i2+1)-timet2(i2));
 JJT3(i2+1)=JJT3(i2)+costr3*(timet2(i2+1)-timet2(i2));JJT4(i2+1)=JJT4(i2)+costr4*(timet2(i2+1)-timet2(i2));
 JJT5(i2+1)=JJT5(i2)+costr5*(timet2(i2+1)-timet2(i2));
i2=i2+1;
xout=[A*x1+B1*unew1;A*x2+B2*unew2;A*x3+B3*unew3;A*x4+B4*unew4;A*x5+B5*unew5;A*x00]';
end
for ii=1:n
    
t(ii+1)=t(ii)+h;

k1=a_20220420tradeYue2Bayesiangame2020_5agentss(t(ii),x(ii,:));

k2=a_20220420tradeYue2Bayesiangame2020_5agentss(t(ii)+h/2,x(ii,:)+h*k1/2);

k3=a_20220420tradeYue2Bayesiangame2020_5agentss(t(ii)+h/2,x(ii,:)+h*k2/2);

k4=a_20220420tradeYue2Bayesiangame2020_5agentss(t(ii)+h,x(ii,:)+h*k3);

x(ii+1,:)=x(ii,:)+h*(k1+2*k2+2*k3+k4)/6;
%按照龙格库塔方法进行数值求解
end
end