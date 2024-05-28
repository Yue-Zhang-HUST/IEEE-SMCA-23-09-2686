%close all
clear all
clc
global A;
global B;
global B1;
global B2;
global B3;
global B4;
global B5;
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
global timet;
timet=zeros(200,1);
global J1;global J2;global J3;global J4;global J5;
global JJ1;global JJ2;global JJ3;global JJ4;global JJ5;
J1=zeros(200,1);J2=zeros(200,1);J3=zeros(200,1);
J4=zeros(200,1);J5=zeros(200,1);JJ1=zeros(200,1);JJ2=zeros(200,1);JJ3=zeros(200,1);
JJ4=zeros(200,1);JJ5=zeros(200,1);
global i2;
global timet2;
timet2=zeros(200,1);
global JT1;global JT2;global JT3;global JT4;global JT5;
global JJT1;
global JJT2;
global JJT3;
global JJT4;
global JJT5;global UUU1;UUU1=zeros(200,1);
JJT1=zeros(200,1);JJT2=zeros(200,1);JJT3=zeros(200,1);
JJT4=zeros(200,1);JJT5=zeros(200,1);
JT1=zeros(200,1);JT2=zeros(200,1);JT3=zeros(200,1);
JT4=zeros(200,1);JT5=zeros(200,1);
i=1;i2=1;
d1=1;
d2=2;
d3=2;
d4=2;
d5=2;
g1=1;
g2=0;
g3=0;
g4=0;
g5=0;
global RAA;
global RBB;
global PAA;
global PBB;
global QAA;
global QBB;
QAA=0.1*[100 0 0;
         0 10 0;
         0 0 1];
QBB=0.001*[100 0 0;
         0 10 0;
         0 0 1];
RAA=400000000;RBB=400000000;


A=[0 1 0;
   0 0 9.8;
   0 0 -5.018];%X方向不稳定的飞行器
B=[0 0 0;
   0 0 0;
   0 0 5.233]; 

% A=[0 1 0;
%    0 0 -9.8;
%    0 0 -5.083];%Y方向不稳定的飞行器
% B=[0 0 0;
%    0 0 0;
%    0 0 5.516]; 

B1=B; 
B2=B; 
B3=B;  
B4=B; 
B5=B; 
AA_A=A;BB_A=(d1+g1)*(d1+g1)*B*inv(RAA)*B';CC_A=QAA; PAA=are(AA_A,BB_A,CC_A);
AA_B=A;BB_B=(d1+g1)*(d1+g1)*B*inv(RBB)*B';CC_B=QBB; PBB=are(AA_B,BB_B,CC_B);
%definitions of Bi
%B1=[1 1]';
%B2=[1 1]';
%B3=[1 1]';
%B4=[1 1]';
%B5=[1 1]';
%definitions of Q
% Q11=(80)*eye(1);
% Q22=(80)*eye(1);
% Q33=(80)*eye(1);
% Q44=(80)*eye(1);
% Q55=(80)*eye(1);
% Q11=(0.4)*eye(1);
% Q22=(0.4)*eye(1);
% Q33=(0.4)*eye(1);
% Q44=(0.4)*eye(1);
% Q55=(0.4)*eye(1);
%initial conditions
%x0=[-9 6 -1 1 6 -6 -2 2 -1 4 0 3 3 1 4 0 2 3 2 4 2 2];
%x0=[-3 1 8 4 -3 -3 4 -3 -10 5 3 1 10 3 2 -1 4 0 2 4 0 0];
%x0=[3 2 2 2 2 1 2 0 2 2 0 0];
% x0=[2*pi.*randn(1,10) rand(1,150) 2*pi.*randn(1,12)];
% x0=10*pi.*rand(1,12);
chuzhi=1100;
 [t,x]=a_20220423_runge_kutta1feixingqi333([chuzhi 0 0   chuzhi 0 0  chuzhi 0 0     chuzhi 0 0   chuzhi 0 0   0 0 0],0.05,0,2000);
 [t2,z]=a_20220423_runge_kutta2feixingqi333([chuzhi 0 0   chuzhi 0 0  chuzhi 0 0     chuzhi 0 0   chuzhi 0 0   0 0 0],0.05,0,2000);
%X方向

% chuzhi=1000;
% [t,x]=a_20220423_runge_kutta1feixingqi333([chuzhi 0 0   chuzhi 0 0  chuzhi 0 0     chuzhi 0 0   chuzhi 0 0   0 0 0],0.05,0,2000);
% [t2,z]=a_20220423_runge_kutta2feixingqi333([chuzhi 0 0   chuzhi 0 0  chuzhi 0 0     chuzhi 0 0   chuzhi 0 0   0 0 0],0.05,0,2000);
% %Y方向






%只有把角度初值设置成0才满足，不然就算是一度都会出现第一个旋转角一下到几百度

% [t,x]=a_20220423_runge_kutta1feixingqi([1 0 1 0 2 0 pi/180 pi/180 pi/180   2 0 -1 0 -2 0 pi/180 pi/180 pi/180   2 0 2 0 1 0 pi/180 pi/180 pi/180     2 0 2 0 1 0 pi/180 pi/180 pi/180   1 0 1 0 2 0 pi/180 pi/180 pi/180   0 0 0 0 0 0 0 0 0],0.05,0,40);
% [t2,z]=a_20220423_runge_kutta2feixingqi([1 0 1 0 2 0 pi/180 pi/180 pi/180   2 0 -1 0 -2 0 pi/180 pi/180 pi/180   2 0 2 0 1 0 pi/180 pi/180 pi/180     2 0 2 0 1 0 pi/180 pi/180 pi/180   1 0 1 0 2 0 pi/180 pi/180 pi/180   0 0 0 0 0 0 0 0 0],0.05,0,40);
%[t,x]=a_20220420traderunge(0, 40, x0, 0.5);
%[t2,z]=a_20220420runge(0, 40, x0, 0.5);
%call ode
%[t,x]=runge('a_20220420tradeYue2Bayesiangame2020_5agentss',[0 40],x0,0.5);
%[t2,z]=runge('a_20220420Yue2Bayesiangame2020_5agentss',[0 40],x0,0.5);

  %options = odeset('OutputFcn',@odeplot);
  %[t,x]= ode23('a_20220420tradeYue2Bayesiangame2020_5agentss',[0 40],x0,options);
  
 %z0%call ode
  %options = odeset('OutputFcn',@odeplot);
  %[t2,z]= ode23('a_20220420Yue2Bayesiangame2020_5agentss',[0 40],x0,options);
 
  
  %plots
figure (5);
%subplot(2,1,1)
plot(t,x(:,1),'k');
hold on
plot(t,x(:,4),'y');
hold on
plot(t,x(:,7),'r');
hold on
plot(t,x(:,10),'m');
hold on
plot(t,x(:,13),'c');
hold on
plot(t,x(:,16),'g');
hold on
plot(t2,z(:,1),'--k');
hold on
plot(t2,z(:,4),'--y');
hold on
plot(t2,z(:,7),'--r');
hold on
plot(t2,z(:,10),'--m');
hold on
plot(t2,z(:,13),'--c');
hold on
legend ('Agent 1 with M_2','Agent 2 with M_2','Agent 3 with M_2','Agent 4 with M_2','Agent 5 with M_2','leader','Agent 1 with M_1','Agent 2 with M_1','Agent 3 with M_1','Agent 4 with M_1','Agent 5 with M_1');
xlabel('Time (s)');
ylabel('x_{i,1}');



figure (6);
%subplot(2,1,1)
plot(t,x(:,2),'k');
hold on
plot(t,x(:,5),'y');
hold on
plot(t,x(:,8),'r');
hold on
plot(t,x(:,11),'m');
hold on
plot(t,x(:,14),'c');
hold on
plot(t,x(:,17),'g');
hold on
plot(t2,z(:,2),'--k');
hold on
plot(t2,z(:,5),'--y');
hold on
plot(t2,z(:,8),'--r');
hold on
plot(t2,z(:,11),'--m');
hold on
plot(t2,z(:,14),'--c');
hold on
% plot(t2,z(:,12),'--g');
% hold on
legend ('Agent 1 with M_2','Agent 2 with M_2','Agent 3 with M_2','Agent 4 with M_2','Agent 5 with M_2','leader','Agent 1 with M_1','Agent 2 with M_1','Agent 3 with M_1','Agent 4 with M_1','Agent 5 with M_1');
xlabel('Time (s)');
ylabel('x_{i,2}');

figure (9);
plot(t,(x(:,1)+x(:,4)+x(:,7)+x(:,10)+x(:,13))/5,'--r');
hold on
plot(t,x(:,16),'g');
hold on
plot(t2,(z(:,1)+z(:,4)+z(:,7)+z(:,10)+z(:,13))/5,'--k');
hold on
legend ('X_1 with M_2','leader','X_1 with M_1');
xlabel('Time (s)');
ylabel('X_1');

figure (8);
plot(t,(x(:,2)+x(:,5)+x(:,8)+x(:,11)+x(:,14))/5,'--r');
hold on
plot(t,x(:,17),'g');
hold on
plot(t2,(z(:,2)+z(:,5)+z(:,8)+z(:,11)+z(:,14))/5,'--k');
hold on
legend ('X_2 with M_2','leader','X_2 with M_1');
xlabel('Time (s)');
ylabel('X_2');

X=(x(:,1)+x(:,4)+x(:,7)+x(:,10)+x(:,13))/5;
Y=(z(:,1)+z(:,4)+z(:,7)+z(:,10)+z(:,13))/5;

Rij1=4*1*B'*PAA*inv(QAA)*PAA*B;
Rij2=4*1*B'*PBB*inv(QBB)*PBB*B;
maxjiao3=180*max(x(:,3))/pi;maxjiao6=180*max(x(:,6))/pi;maxjiao9=180*max(x(:,9))/pi;
maxjiao12=180*max(x(:,12))/pi;maxjiao15=180*max(x(:,15))/pi;