function [t,x]=a_20220423_runge_kutta2feixingqi333(x0,h,a,b)%参数表顺序依次是微分方程组的函数名称，初始值向量，步长，时间起点，时间终点（参数形式参考了ode45函数）
n=floor((b-a)/h);%求步数
t(1)=a;%时间起点
x(1,:)=x0;%赋初值，可以是向量，但是要注意维数

function xout=a_20220420Yue2Bayesiangame2020_5agentss(t,x)
global A;global B;
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
global i;
global J1;
global J2;
global J3;
global J4;
global J5;global JJ1;global JJ2;global JJ3;global JJ4;global JJ5;
global timet;
global RAA;
global RBB;
global PAA;
global PBB;
global QAA;
global QBB;
%a1=3;%a2=3;%a3=3;%a5=3;%a6=1;%a7=1;%a8=1;%a9=1;%a10=1;
%delta1=[x(1) x(2)]';%delta2=[x(3) x(4)]';%delta3=[x(5) x(6)]';
%delta4=[x(7) x(8)]';%delta5=[x(9) x(10)]';
x1=[x(1) x(2) x(3)]';
x2=[ x(4) x(5) x(6)]';
x3=[x(7) x(8) x(9)]';
x4=[x(10) x(11) x(12)]';
x5=[x(13) x(14) x(15)]';
x00=[x(16) x(17) x(18)]';

delta1=x1-x3+x1-x00;
delta2=x2-x1+x2-x3;
delta3=x3-x1+x3-x5;
delta4=x4-x2+x4-x5;
delta5=x5-x3+x5-x4;

agent2=[0.1
0.10078
0.10206
0.10384
0.10612
0.1089
0.11218
0.11596
0.12024
0.12502
0.1303
0.13608
0.14236
0.14914
0.15642
0.1642
0.17248
0.18126
0.19054
0.20032
0.2106
0.22138
0.23266
0.24444
0.25672
0.2695
0.28278
0.29656
0.31084
0.32512
0.3399
0.35518
0.37096
0.38724
0.40402
0.4213
0.43908
0.45736
0.47614
0.49542
0.5152
0.53548
0.55626
0.57754
0.59932
0.6216
0.64438
0.66766
0.69144
0.71572
0.7405
0.76578
0.79156
0.81784
0.84462
0.8719
0.9
0.9155
0.93
0.9435
0.956
0.9685
0.98
0.9905
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
0.1017
0.1038
0.1063
0.1092
0.1125
0.1162
0.1203
0.1248
0.1297
0.135
0.1407
0.1468
0.1533
0.1602
0.1675
0.1752
0.1833
0.1918
0.2007
0.21
0.2197
0.2298
0.2403
0.2512
0.2625
0.2742
0.2863
0.2988
0.3113
0.3242
0.3375
0.3512
0.3653
0.3798
0.3947
0.41
0.4257
0.4418
0.4583
0.4752
0.4925
0.5102
0.5283
0.5468
0.5657
0.585
0.6047
0.6248
0.6453
0.6662
0.6875
0.7092
0.7313
0.7538
0.7767
0.8
0.8195
0.838
0.8555
0.872
0.8875
0.902
0.9155
0.928
0.9405
0.952
0.9625
0.972
0.9805
0.988
0.9945
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
0.07
0.06
0.053
0.05
0.0529
0.0561
0.0596
0.0634
0.0675
0.0719
0.0766
0.0816
0.0869
0.0925
0.0984
0.1046
0.1111
0.1179
0.125
0.1324
0.1401
0.1481
0.1564
0.165
0.1739
0.1831
0.1926
0.2024
0.2125
0.2229
0.2336
0.2446
0.2559
0.2675
0.2794
0.2916
0.3041
0.3169
0.3297
0.3428
0.3562
0.3699
0.3839
0.3982
0.4128
0.4277
0.4429
0.4584
0.4742
0.4903
0.5067
0.5234
0.5404
0.5577
0.5753
0.5932
0.6114
0.6299
0.6487
0.6678
0.6872
0.7069
0.7269
0.7472
0.7678
0.7887
0.8099
0.8314
0.8532
0.8753
0.8977
0.9204
0.94215
0.9577
0.97025
0.9798
0.98935
0.9959
0.99945
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
0.0000225
0.000055
0.0000975
0.00016
0.0007225
0.001785
0.0033475
0.00541
0.0079725
0.011035
0.0145975
0.01866
0.0232225
0.028285
0.0338475
0.03991
0.0464725
0.053535
0.0610975
0.06916
0.0777225
0.086785
0.0963475
0.10641
0.1169725
0.128035
0.1395975
0.15166
0.1642225
0.177285
0.1908475
0.20491
0.2189725
0.233535
0.2485975
0.26416
0.2802225
0.296785
0.3138475
0.33141
0.3494725
0.368035
0.3870975
0.40666
0.4267225
0.447285
0.4683475
0.48991
0.5119725
0.534535
0.5575975
0.58116
0.6052225
0.629785
0.6548475
0.68041
0.7064725
0.733035
0.7600975
0.78766
0.8157225
0.843805
0.8718975
0.9
0.9245
0.946
0.9645
0.98
0.9895
0.996
0.9995
1
];

for jj=1:80
if 0.1*t<jj/2 && 0.1*t>=(jj-1)/2
prob1=1;
prob2=agent2(jj);
prob3=agent3(jj);
prob4=agent4(jj);
prob5=agent5(jj);
R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
end
end

if   0.1*t>=(81-1)/2
prob1=1;
prob2=agent2(81);
prob3=agent3(81);
prob4=agent4(81);
prob5=agent5(81);
R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
end

% if t<1/2 && t>=(1-1)/2
% prob1=1;
% prob2=agent2(1);
% prob3=agent3(1);
% prob4=agent4(1);
% prob5=agent5(1);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<2/2 &&t>=(2-1)/2
% prob1=1;
% prob2=agent2(2);
% prob3=agent3(2);
% prob4=agent4(2);
% prob5=agent5(2);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% 
% if t<3/2 && t>=(3-1)/2
% prob1=1;
% prob2=agent2(3);
% prob3=agent3(3);
% prob4=agent4(3);
% prob5=agent5(3);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<4/2 && t>=(4-1)/2
% prob1=1;
% prob2=agent2(4);
% prob3=agent3(4);
% prob4=agent4(4);
% prob5=agent5(4);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<5/2 && t>=(5-1)/2
% prob1=1;
% prob2=agent2(5);
% prob3=agent3(5);
% prob4=agent4(5);
% prob5=agent5(5);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<6/2 && t>=(6-1)/2
% prob1=1;
% prob2=agent2(6);
% prob3=agent3(6);
% prob4=agent4(6);
% prob5=agent5(6);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<7/2 && t>=(7-1)/2
% prob1=1;
% prob2=agent2(7);
% prob3=agent3(7);
% prob4=agent4(7);
% prob5=agent5(7);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<8/2 && t>=(8-1)/2
% prob1=1;
% prob2=agent2(8);
% prob3=agent3(8);
% prob4=agent4(8);
% prob5=agent5(8);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<9/2 && t>=(9-1)/2
% prob1=1;
% prob2=agent2(9);
% prob3=agent3(9);
% prob4=agent4(9);
% prob5=agent5(9);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<10/2 && t>=(10-1)/2
% prob1=1;
% prob2=agent2(10);
% prob3=agent3(10);
% prob4=agent4(10);
% prob5=agent5(10);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<11/2 && t>=(11-1)/2
% prob1=1;
% prob2=agent2(11);
% prob3=agent3(11);
% prob4=agent4(11);
% prob5=agent5(11);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<12/2 && t>=(12-1)/2
% prob1=1;
% prob2=agent2(12);
% prob3=agent3(12);
% prob4=agent4(12);
% prob5=agent5(12);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<13/2 && t>=(13-1)/2
% prob1=1;
% prob2=agent2(13);
% prob3=agent3(13);
% prob4=agent4(13);
% prob5=agent5(13);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<14/2 && t>=(14-1)/2
% prob1=1;
% prob2=agent2(14);
% prob3=agent3(14);
% prob4=agent4(14);
% prob5=agent5(14);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<15/2 && t>=(15-1)/2
% prob1=1;
% prob2=agent2(15);
% prob3=agent3(15);
% prob4=agent4(15);
% prob5=agent5(15);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<16/2 && t>=(16-1)/2
% prob1=1;
% prob2=agent2(16);
% prob3=agent3(16);
% prob4=agent4(16);
% prob5=agent5(16);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<17/2 && t>=(17-1)/2
% prob1=1;
% prob2=agent2(17);
% prob3=agent3(17);
% prob4=agent4(17);
% prob5=agent5(17);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<18/2 && t>=(18-1)/2
% prob1=1;
% prob2=agent2(18);
% prob3=agent3(18);
% prob4=agent4(18);
% prob5=agent5(18);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<19/2 && t>=(19-1)/2
% prob1=1;
% prob2=agent2(19);
% prob3=agent3(19);
% prob4=agent4(19);
% prob5=agent5(19);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t>=(20-1)/2
% prob1=1;
% prob2=agent2(20);
% prob3=agent3(20);
% prob4=agent4(20);
% prob5=agent5(20);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<21/2 && t>=(21-1)/2
% prob1=1;
% prob2=agent2(21);
% prob3=agent3(21);
% prob4=agent4(21);
% prob5=agent5(21);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<22/2 && t>=(22-1)/2
% prob1=1;
% prob2=agent2(22);
% prob3=agent3(22);
% prob4=agent4(22);
% prob5=agent5(22);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<23/2 && t>=(23-1)/2
% prob1=1;
% prob2=agent2(23);
% prob3=agent3(23);
% prob4=agent4(23);
% prob5=agent5(23);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<24/2 && t>=(24-1)/2
% prob1=1;
% prob2=agent2(24);
% prob3=agent3(24);
% prob4=agent4(24);
% prob5=agent5(24);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<25/2 && t>=(25-1)/2
% prob1=1;
% prob2=agent2(25);
% prob3=agent3(25);
% prob4=agent4(25);
% prob5=agent5(25);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<26/2 && t>=(26-1)/2
% prob1=1;
% prob2=agent2(26);
% prob3=agent3(26);
% prob4=agent4(26);
% prob5=agent5(26);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<27/2 && t>=(27-1)/2
% prob1=1;
% prob2=agent2(27);
% prob3=agent3(27);
% prob4=agent4(27);
% prob5=agent5(27);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<28/2 && t>=(28-1)/2
% prob1=1;
% prob2=agent2(28);
% prob3=agent3(28);
% prob4=agent4(28);
% prob5=agent5(28);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<29/2 && t>=(29-1)/2
% prob1=1;
% prob2=agent2(29);
% prob3=agent3(29);
% prob4=agent4(29);
% prob5=agent5(29);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<30/2 && t>=(30-1)/2
% prob1=1;
% prob2=agent2(30);
% prob3=agent3(30);
% prob4=agent4(30);
% prob5=agent5(30);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% 
% if t<31/2 && t>=(31-1)/2
% prob1=1;
% prob2=agent2(31);
% prob3=agent3(31);
% prob4=agent4(31);
% prob5=agent5(31);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<32/2 && t>=(32-1)/2
% prob1=1;
% prob2=agent2(32);
% prob3=agent3(32);
% prob4=agent4(32);
% prob5=agent5(32);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<33/2 && t>=(33-1)/2
% prob1=1;
% prob2=agent2(33);
% prob3=agent3(33);
% prob4=agent4(33);
% prob5=agent5(33);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<34/2 && t>=(34-1)/2
% prob1=1;
% prob2=agent2(34);
% prob3=agent3(34);
% prob4=agent4(34);
% prob5=agent5(34);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<35/2 && t>=(35-1)/2
% prob1=1;
% prob2=agent2(35);
% prob3=agent3(35);
% prob4=agent4(35);
% prob5=agent5(35);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<36/2 && t>=(36-1)/2
% prob1=1;
% prob2=agent2(36);
% prob3=agent3(36);
% prob4=agent4(36);
% prob5=agent5(36);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<37/2 && t>=(37-1)/2
% prob1=1;
% prob2=agent2(37);
% prob3=agent3(37);
% prob4=agent4(37);
% prob5=agent5(37);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<38/2 && t>=(38-1)/2
% prob1=1;
% prob2=agent2(38);
% prob3=agent3(38);
% prob4=agent4(38);
% prob5=agent5(38);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<39/2 && t>=(39-1)/2
% prob1=1;
% prob2=agent2(39);
% prob3=agent3(39);
% prob4=agent4(39);
% prob5=agent5(39);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<40/2 && t>=(40-1)/2
% prob1=1;
% prob2=agent2(40);
% prob3=agent3(40);
% prob4=agent4(40);
% prob5=agent5(40);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<41/2 && t>=(41-1)/2
% prob1=1;
% prob2=agent2(41);
% prob3=agent3(41);
% prob4=agent4(41);
% prob5=agent5(41);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<42/2 && t>=(42-1)/2
% prob1=1;
% prob2=agent2(42);
% prob3=agent3(42);
% prob4=agent4(42);
% prob5=agent5(42);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<43/2 && t>=(43-1)/2
% prob1=1;
% prob2=agent2(43);
% prob3=agent3(43);
% prob4=agent4(43);
% prob5=agent5(43);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<44/2 && t>=(44-1)/2
% prob1=1;
% prob2=agent2(44);
% prob3=agent3(44);
% prob4=agent4(44);
% prob5=agent5(44);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<45/2 && t>=(45-1)/2
% prob1=1;
% prob2=agent2(45);
% prob3=agent3(45);
% prob4=agent4(45);
% prob5=agent5(45);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<46/2 && t>=(46-1)/2
% prob1=1;
% prob2=agent2(46);
% prob3=agent3(46);
% prob4=agent4(46);
% prob5=agent5(46);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<47/2 && t>=(47-1)/2
% prob1=1;
% prob2=agent2(47);
% prob3=agent3(47);
% prob4=agent4(47);
% prob5=agent5(47);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<48/2 && t>=(48-1)/2
% prob1=1;
% prob2=agent2(48);
% prob3=agent3(48);
% prob4=agent4(48);
% prob5=agent5(48);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<49/2 && t>=(49-1)/2
% prob1=1;
% prob2=agent2(49);
% prob3=agent3(49);
% prob4=agent4(49);
% prob5=agent5(49);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<50/2 && t>=(50-1)/2
% prob1=1;
% prob2=agent2(50);
% prob3=agent3(50);
% prob4=agent4(50);
% prob5=agent5(50);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% 
% if t<51/2 && t>=(51-1)/2
% prob1=1;
% prob2=agent2(51);
% prob3=agent3(51);
% prob4=agent4(51);
% prob5=agent5(51);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<52/2 && t>=(52-1)/2
% prob1=1;
% prob2=agent2(52);
% prob3=agent3(52);
% prob4=agent4(52);
% prob5=agent5(52);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<53/2 && t>=(53-1)/2
% prob1=1;
% prob2=agent2(53);
% prob3=agent3(53);
% prob4=agent4(53);
% prob5=agent5(53);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<54/2 && t>=(54-1)/2
% prob1=1;
% prob2=agent2(54);
% prob3=agent3(54);
% prob4=agent4(54);
% prob5=agent5(54);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<55/2 && t>=(55-1)/2
% prob1=1;
% prob2=agent2(55);
% prob3=agent3(55);
% prob4=agent4(55);
% prob5=agent5(55);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<56/2 && t>=(56-1)/2
% prob1=1;
% prob2=agent2(56);
% prob3=agent3(56);
% prob4=agent4(56);
% prob5=agent5(56);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<57/2 && t>=(57-1)/2
% prob1=1;
% prob2=agent2(57);
% prob3=agent3(57);
% prob4=agent4(57);
% prob5=agent5(57);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<58/2 && t>=(58-1)/2
% prob1=1;
% prob2=agent2(58);
% prob3=agent3(58);
% prob4=agent4(58);
% prob5=agent5(58);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<59/2 && t>=(59-1)/2
% prob1=1;
% prob2=agent2(59);
% prob3=agent3(59);
% prob4=agent4(59);
% prob5=agent5(59);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<60/2 && t>=(60-1)/2
% prob1=1;
% prob2=agent2(60);
% prob3=agent3(60);
% prob4=agent4(60);
% prob5=agent5(60);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<61/2 && t>=(61-1)/2
% prob1=1;
% prob2=agent2(61);
% prob3=agent3(61);
% prob4=agent4(61);
% prob5=agent5(61);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<62/2 && t>=(62-1)/2
% prob1=1;
% prob2=agent2(62);
% prob3=agent3(62);
% prob4=agent4(62);
% prob5=agent5(62);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<63/2 && t>=(63-1)/2
% prob1=1;
% prob2=agent2(63);
% prob3=agent3(63);
% prob4=agent4(63);
% prob5=agent5(63);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<64/2 && t>=(64-1)/2
% prob1=1;
% prob2=agent2(64);
% prob3=agent3(64);
% prob4=agent4(64);
% prob5=agent5(64);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<65/2 && t>=(65-1)/2
% prob1=1;
% prob2=agent2(65);
% prob3=agent3(65);
% prob4=agent4(65);
% prob5=agent5(65);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<66/2 && t>=(66-1)/2
% prob1=1;
% prob2=agent2(66);
% prob3=agent3(66);
% prob4=agent4(66);
% prob5=agent5(66);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<67/2 && t>=(67-1)/2
% prob1=1;
% prob2=agent2(67);
% prob3=agent3(67);
% prob4=agent4(67);
% prob5=agent5(67);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<68/2 && t>=(68-1)/2
% prob1=1;
% prob2=agent2(68);
% prob3=agent3(68);
% prob4=agent4(68);
% prob5=agent5(68);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<69/2 && t>=(69-1)/2
% prob1=1;
% prob2=agent2(69);
% prob3=agent3(69);
% prob4=agent4(69);
% prob5=agent5(69);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% 
% if t<70/2 && t>=(70-1)/2
% prob1=1;
% prob2=agent2(70);
% prob3=agent3(70);
% prob4=agent4(70);
% prob5=agent5(70);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<71/2 && t>=(71-1)/2
% prob1=1;
% prob2=agent2(71);
% prob3=agent3(71);
% prob4=agent4(71);
% prob5=agent5(71);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<72/2 && t>=(72-1)/2
% prob1=1;
% prob2=agent2(72);
% prob3=agent3(72);
% prob4=agent4(72);
% prob5=agent5(72);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<73/2 && t>=(73-1)/2
% prob1=1;
% prob2=agent2(73);
% prob3=agent3(73);
% prob4=agent4(73);
% prob5=agent5(73);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<74/2 && t>=(74-1)/2
% prob1=1;
% prob2=agent2(74);
% prob3=agent3(74);
% prob4=agent4(74);
% prob5=agent5(74);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<75/2 && t>=(75-1)/2
% prob1=1;
% prob2=agent2(75);
% prob3=agent3(75);
% prob4=agent4(75);
% prob5=agent5(75);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<76/2 && t>=(76-1)/2
% prob1=1;
% prob2=agent2(76);
% prob3=agent3(76);
% prob4=agent4(76);
% prob5=agent5(76);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<77/2 && t>=(77-1)/2
% prob1=1;
% prob2=agent2(77);
% prob3=agent3(77);
% prob4=agent4(77);
% prob5=agent5(77);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<78/2 && t>=(78-1)/2
% prob1=1;
% prob2=agent2(78);
% prob3=agent3(78);
% prob4=agent4(78);
% prob5=agent5(78);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<79/2 && t>=(79-1)/2
% prob1=1;
% prob2=agent2(79);
% prob3=agent3(79);
% prob4=agent4(79);
% prob5=agent5(79);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% if t<80/2 && t>=(80-1)/2
% prob1=1;
% prob2=agent2(80);
% prob3=agent3(80);
% prob4=agent4(80);
% prob5=agent5(80);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end
% 
% if  t>=(81-1)/2
% prob1=1;
% prob2=agent2(81);
% prob3=agent3(81);
% prob4=agent4(81);
% prob5=agent5(81);
% R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
% R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
% R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
% R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
% R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
% AA1=A;BB1=(d1+g1)*(d1+g1)*B*inv(R11)*B';QQ1=(QAA*prob1+QBB*(1-prob1));CC1=QQ1; P11=are(AA1,BB1,CC1);u1=-(d1+g1)*inv(R11)*B1'*1*P11*delta1;
% AA2=A;BB2=(d2+g2)*(d2+g2)*B*inv(R22)*B';QQ2=(QAA*prob2+QBB*(1-prob2));CC2=QQ2; P22=are(AA2,BB2,CC2);u2=-(d2+g2)*inv(R22)*B2'*1*P22*delta2;
% AA3=A;BB3=(d3+g3)*(d3+g3)*B*inv(R33)*B';QQ3=(QAA*prob3+QBB*(1-prob3));CC3=QQ3; P33=are(AA3,BB3,CC3);u3=-(d3+g3)*inv(R33)*B3'*1*P33*delta3;
% AA4=A;BB4=(d4+g4)*(d4+g4)*B*inv(R44)*B';QQ4=(QAA*prob4+QBB*(1-prob4));CC4=QQ4; P44=are(AA4,BB4,CC4);u4=-(d4+g4)*inv(R44)*B4'*1*P44*delta4;
% AA5=A;BB5=(d5+g5)*(d5+g5)*B*inv(R55)*B';QQ5=(QAA*prob5+QBB*(1-prob5));CC5=QQ5; P55=are(AA5,BB5,CC5);u5=-(d5+g5)*inv(R55)*B5'*1*P55*delta5;
% end

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
R11=(RAA*prob1+RBB*(1-prob1))*eye(3);
R22=(RAA*prob2+RBB*(1-prob2))*eye(3);
R33=(RAA*prob3+RBB*(1-prob3))*eye(3);
R44=(RAA*prob4+RBB*(1-prob4))*eye(3);
R55=(RAA*prob5+RBB*(1-prob5))*eye(3);
RAIJIE=540*eye(3);
R12=RAIJIE;R13=RAIJIE;R14=RAIJIE;R15=RAIJIE; R21=RAIJIE;R23=RAIJIE;R24=RAIJIE;R25=RAIJIE; R31=RAIJIE;R32=RAIJIE;R34=RAIJIE;R35=RAIJIE; R41=RAIJIE;R42=RAIJIE;R43=RAIJIE;R45=RAIJIE; R51=RAIJIE;R52=RAIJIE;R53=RAIJIE;R54=RAIJIE;
Q11=(QAA*prob1+QBB*(1-prob1))*eye(3); Q22=(QAA*prob2+QBB*(1-prob2))*eye(3); Q33=(QAA*prob3+QBB*(1-prob3))*eye(3); Q44=(QAA*prob4+QBB*(1-prob4))*eye(3); Q55=(QAA*prob5+QBB*(1-prob5))*eye(3);N1=1;N2=2;N3=2;N4=2;N5=2; P1=PAA*prob1+PBB*(1-prob1)*eye(3);P2=PAA*prob2+PBB*(1-prob2)*eye(3);P3=PAA*prob3+PBB*(1-prob3)*eye(3); P4=PAA*prob4+PBB*(1-prob4)*eye(3);P5=PAA*prob5+PBB*(1-prob5)*eye(3); Q13=-1*N1*(d3+g3)*P1*inv(R33)*P3;Q133=4*P3*inv(R33)*R13*inv(R33)*P3; Q21=-1*N2*(d1+g1)*P2*inv(R11)*P1;Q211=4*P1*inv(R11)*R21*inv(R11)*P1; Q23=-1*N2*(d3+g3)*P2*inv(R33)*P3;Q233=4*P3*inv(R33)*R23*inv(R33)*P3; Q31=-1*N3*(d1+g1)*P3*inv(R11)*P1;Q311=4*P1*inv(R11)*R31*inv(R11)*P1; Q35=-1*N3*(d5+g5)*P3*inv(R55)*P5;Q355=4*P5*inv(R55)*R35*inv(R55)*P5; Q42=-1*N4*(d2+g2)*P4*inv(R22)*P2;Q422=4*P2*inv(R22)*R42*inv(R22)*P2; Q45=-1*N4*(d5+g5)*P4*inv(R55)*P5;Q455=4*P5*inv(R55)*R45*inv(R55)*P5; Q53=-1*N5*(d3+g3)*P5*inv(R33)*P3;Q533=4*P3*inv(R33)*R53*inv(R33)*P3; Q54=-1*N5*(d4+g4)*P5*inv(R44)*P4;Q544=4*P4*inv(R44)*R54*inv(R44)*P4;
costr1=delta1'*Q11*delta1+delta1'*Q13*delta3+delta1'*Q13*delta3+delta3'*Q133*delta3+u1'*R11*u1-u3'*R13*u3;
costr2=delta2'*Q22*delta2+delta2'*Q21*delta1+delta2'*Q21*delta1+delta1'*Q211*delta1+u2'*R22*u2-u1'*R21*u1+delta2'*Q22*delta2+delta2'*Q23*delta3+delta2'*Q23*delta3+delta3'*Q233*delta3+u2'*R22*u2-u3'*R23*u3;
costr3=delta3'*Q33*delta3+delta3'*Q31*delta1+delta3'*Q31*delta1+delta1'*Q311*delta1+u3'*R33*u3-u1'*R31*u1+delta3'*Q33*delta3+delta3'*Q35*delta5+delta3'*Q35*delta5+delta5'*Q355*delta5+u3'*R33*u3-u5'*R35*u5;
costr4=delta4'*Q44*delta4+delta4'*Q42*delta2+delta4'*Q42*delta2+delta2'*Q422*delta2+u4'*R44*u4-u2'*R42*u2+delta4'*Q44*delta4+delta4'*Q45*delta5+delta4'*Q45*delta5+delta5'*Q455*delta5+u4'*R44*u4-u5'*R45*u5;
costr5=delta5'*Q55*delta5+delta5'*Q53*delta3+delta5'*Q53*delta3+delta3'*Q533*delta3+u5'*R55*u5-u3'*R53*u3+delta5'*Q55*delta5+delta5'*Q54*delta4+delta5'*Q54*delta4+delta4'*Q544*delta4+u5'*R55*u5-u4'*R54*u4;


J1(1)=0;J2(1)=0;J3(1)=0;J4(1)=0;J5(1)=0;timet(1)=0;
timet(i+1)=t;
J1(i+1)=costr1;J2(i+1)=costr2;
 J3(i+1)=costr3;J4(i+1)=costr4;
 J5(i+1)=costr5;
 JJ1(i+1)=JJ1(i)+costr1*(timet(i+1)-timet(i));JJ2(i+1)=JJ2(i)+costr2*(timet(i+1)-timet(i));
  JJ3(i+1)=JJ3(i)+costr3*(timet(i+1)-timet(i));JJ4(i+1)=JJ4(i)+costr4*(timet(i+1)-timet(i));
  JJ5(i+1)=JJ5(i)+costr5*(timet(i+1)-timet(i));
i=i+1;
xout=[A*x1+B1*unew1;A*x2+B2*unew2;A*x3+B3*unew3;A*x4+B4*unew4;A*x5+B5*unew5;A*x00]';
end

for ii=1:n
    
t(ii+1)=t(ii)+h;

k1=a_20220420Yue2Bayesiangame2020_5agentss(t(ii),x(ii,:));

k2=a_20220420Yue2Bayesiangame2020_5agentss(t(ii)+h/2,x(ii,:)+h*k1/2);

k3=a_20220420Yue2Bayesiangame2020_5agentss(t(ii)+h/2,x(ii,:)+h*k2/2);

k4=a_20220420Yue2Bayesiangame2020_5agentss(t(ii)+h,x(ii,:)+h*k3);

x(ii+1,:)=x(ii,:)+h*(k1+2*k2+2*k3+k4)/6;
%按照龙格库塔方法进行数值求解
end
end