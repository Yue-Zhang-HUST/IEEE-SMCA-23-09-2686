close all
clear all
clc
global A;
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
global JJT5;
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
A=[0 0; 0 0];
B1=[1 0; 0 1];
B2=[1 0; 0 1];
B3=[1 0; 0 1];
B4=[1 0; 0 1];
B5=[1 0; 0 1];
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
[t,x]=a20220510_runge_kutta1([3 2 2 2 2 1 2 0 2 2 0 0],0.05,0,40);
[t2,z]=a20220510_runge_kutta2([3 2 2 2 2 1 2 0 2 2 0 0],0.05,0,40);
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
figure (1);
%subplot(2,1,1)
plot(t,x(:,1),'k');
hold on
plot(t,x(:,3),'y');
hold on
plot(t,x(:,5),'r');
hold on
plot(t,x(:,7),'m');
hold on
plot(t,x(:,9),'c');
hold on
plot(t,x(:,11),'g');
hold on
plot(t2,z(:,1),'--k');
hold on
plot(t2,z(:,3),'--y');
hold on
plot(t2,z(:,5),'--r');
hold on
plot(t2,z(:,7),'--m');
hold on
plot(t2,z(:,9),'--c');
hold on
legend ('Agent 1 with M_2','Agent 2 with M_2','Agent 3 with M_2','Agent 4 with M_2','Agent 5 with M_2','leader','Agent 1 with M_1','Agent 2 with M_1','Agent 3 with M_1','Agent 4 with M_1','Agent 5 with M_1');
xlabel('Time (s)');
ylabel('x_{i,1}');



figure (2);
%subplot(2,1,1)
plot(t,x(:,2),'k');
hold on
plot(t,x(:,4),'y');
hold on
plot(t,x(:,6),'r');
hold on
plot(t,x(:,8),'m');
hold on
plot(t,x(:,10),'c');
hold on
plot(t,x(:,12),'g');
hold on
plot(t2,z(:,2),'--k');
hold on
plot(t2,z(:,4),'--y');
hold on
plot(t2,z(:,6),'--r');
hold on
plot(t2,z(:,8),'--m');
hold on
plot(t2,z(:,10),'--c');
hold on
% plot(t2,z(:,12),'--g');
% hold on
legend ('Agent 1 with M_2','Agent 2 with M_2','Agent 3 with M_2','Agent 4 with M_2','Agent 5 with M_2','leader','Agent 1 with M_1','Agent 2 with M_1','Agent 3 with M_1','Agent 4 with M_1','Agent 5 with M_1');
xlabel('Time (s)');
ylabel('x_{i,2}');

figure (3);
plot(t,(x(:,1)+x(:,3)+x(:,5)+x(:,7)+x(:,9))/5,'--r');
hold on
plot(t,x(:,11),'g');
hold on
plot(t2,(z(:,1)+z(:,3)+z(:,5)+z(:,7)+z(:,9))/5,'--k');
hold on
legend ('X_1 with M_2','leader','X_1 with M_1');
xlabel('Time (s)');
ylabel('X_1');

figure (4);
plot(t,(x(:,2)+x(:,4)+x(:,6)+x(:,8)+x(:,10))/5,'--r');
hold on
plot(t,x(:,12),'g');
hold on
plot(t2,(z(:,2)+z(:,4)+z(:,6)+z(:,8)+z(:,10))/5,'--k');
hold on
legend ('X_2 with M_2','leader','X_2 with M_1');
xlabel('Time (s)');
ylabel('X_2');
% %definitions of R
% 
% R12=20*[1 0;0 1];
% R13=20*[1 0;0 1];
% 
% 
% R23=20*[1 0;0 1];
% 
% 
% R31=20*[1 0;0 1];
% R34=20*[1 0;0 1];
% 
% 
% R43=20*[1 0;0 1];
% R45=20*[1 0;0 1];

% R52=20*[1 0;0 1];
% R54=20*[1 0;0 1];
% global Q133;
% global Q13;
% global Q12;
% global Q122;
% Q133=[0.8 0; 0 0.8];
% Q13=[-0.2 0; 0 -0.2];
% Q12=[-0.2 0; 0 -0.2];
% Q122=[0.8 0; 0 0.8];
% global Q233;
% global Q23;
% Q233=[0.8 0; 0 0.8];
% Q23=[-0.4 0; 0 -0.4];
% 
% global Q311;
% global Q31;
% global Q34;
% global Q344;
% Q311=[0.8 0; 0 0.8];
% Q31=[-0.4 0; 0 -0.4];
% Q34=[-0.4 0; 0 -0.4];
% Q344=[0.8 0; 0 0.8];
% 
% 
% global Q433;
% global Q43;
% global Q45;
% global Q455;
% Q433=[0.8 0; 0 0.8];
% Q43=[-0.4 0; 0 -0.4];
% Q45=[-0.4 0; 0 -0.4];
% Q455=[0.8 0; 0 0.8];
% 
% 
% global Q522;
% global Q52;
% global Q54;
% global Q544;
% Q522=[0.8 0; 0 0.8];
% Q52=[-0.4 0; 0 -0.4];
% Q54=[-0.4 0; 0 -0.4];
% Q544=[0.8 0; 0 0.8];

% global Q11;
% global Q22;
% global Q33;
% global Q44;
% global Q55;

% global kappa1;
% global kappa2;
% global kappa3;
% global R12;
% global R13;
% global R23;
% global R31;
% global R34;
% global R43;
% global R45;
% global R52;
% global R54;

%figure (2);
%subplot(3,1,1)
%plot(t,x(:,15:16));
%hold on
%plot(t,x(:,21),'r:');
%plot(t,x(:,22),'m:');
%legend ('x3_1','x3_2','x0_1','x0_2');
%xlabel('Time (s)');
%subplot(3,1,2)
%plot(t,x(:,17:18));
%hold on
%plot(t,x(:,21),'r:');
%plot(t,x(:,22),'m:');
%legend ('x4_1','x4_2','x0_1','x0_2');
%xlabel('Time (s)');
%subplot(3,1,3)
%plot(t,x(:,19:20));
%hold on
%plot(t,x(:,21),'r:');
%plot(t,x(:,22),'m:');
%legend ('x5_1','x5_2','x0_1','x0_2');
%xlabel('Time (s)');
  
  
  
  
%  states
%figure (1);
%subplot(2,1,1)
%plot(t,x(:,161:162));
%hold on
%plot(t,x(:,171),'r:');
%plot(t,x(:,172),'m:');
%legend ('x1_1','x1_2','x0_1','x0_2');
%xlabel('Time (s)');
%subplot(2,1,2)
%plot(t,x(:,163:164));
%hold on
%plot(t,x(:,171),'r:');
%plot(t,x(:,172),'m:');
%legend ('x2_1','x2_2','x0_1','x0_2');
%xlabel('Time (s)');

%figure (2);
%subplot(3,1,1)
%plot(t,x(:,165:166));
%hold on
%plot(t,x(:,171),'r:');
%plot(t,x(:,172),'m:');
%legend ('x3_1','x3_2','x0_1','x0_2');
%xlabel('Time (s)');
%subplot(3,1,2)
%plot(t,x(:,167:168));
%hold on
%plot(t,x(:,171),'r:');
%plot(t,x(:,172),'m:');
%legend ('x4_1','x4_2','x0_1','x0_2');
%xlabel('Time (s)');
%subplot(3,1,3)
%plot(t,x(:,169:170));
%hold on
%plot(t,x(:,171),'r:');
%plot(t,x(:,172),'m:');
%legend ('x5_1','x5_2','x0_1','x0_2');
%xlabel('Time (s)');



% figure (2);
% subplot(3,1,1)
% plot(t,x(:,7:9));
% title ('Critic 1');
% xlabel('Time(s)')
% % figure (3);
% subplot(3,1,2)
% plot(t,x(:,10:12));
% title ('Critic 2');
% xlabel('Time(s)')
% % figure (4);
% subplot(3,1,3)
% plot(t,x(:,13:15));
% title ('Critic 3');
% xlabel('Time(s)')
% figure (5);
% 
% plot3(kappa1,kappa2,kappa3);
% 
% title ('Controls');
% 
% 
% figure (6);
% plot(kappa1,'r');
% hold on;
% plot(kappa2,'b');
% hold on;
% plot(kappa3,'y');
% legend ('u1', 'u2','u3');
% 
% figure (7)
% grid on
% plot(x(:,1),x(:,2),'r');
% hold on;
% plot(x(:,3),x(:,4),'b');
% hold on;
% plot(x(:,5),x(:,6),'m');
