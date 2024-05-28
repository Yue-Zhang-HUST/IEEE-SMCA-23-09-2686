figure(1);
plot(timet,JJ1,'--b'); 
hold on
plot(timet2,JJT1,'b'); 
hold on
plot(timet,JJ2,'--r'); 
hold on
plot(timet2,JJT2,'r'); 
hold on
plot(timet,JJ3,'--m'); 
hold on
plot(timet2,JJT3,'m'); 
hold on
plot(timet,JJ4,'--c'); 
hold on
plot(timet2,JJT4,'c'); 
hold on
plot(timet,JJ5,'--g'); 
hold on
plot(timet2,JJT5,'g'); 
hold on
legend ('J1','J1','J2','J2','J3','J3','J4','J4','J5','J5');
xlabel('Time (s)');
ylabel('Costs');


figure(2);
plot(timet(368:371),JJ1(368:371),'--b'); 
hold on
plot(timet2(463:467),JJT1(463:467),'b'); 
hold on
figure(3);
plot(timet(368:371),JJ2(368:371),'--r'); 
hold on
plot(timet2(463:467),JJT2(463:467),'r'); 
hold on
figure(4);
plot(timet(368:371),JJ3(368:371),'--m'); 
hold on
plot(timet2(463:467),JJT3(463:467),'m'); 
hold on
figure(5);
plot(timet(368:371),JJ4(368:371),'--c'); 
hold on
plot(timet2(463:467),JJT4(463:467),'c'); 
hold on
figure(6);
plot(timet(368:371),JJ5(368:371),'--g'); 
hold on
plot(timet2(463:467),JJT5(463:467),'g'); 
hold on



% figure (1);
% plot(timet,JJ1,'--b'); 
% hold on
% plot(timet2,JJT1,'b'); 
% hold on
% xlabel('Time (s)');
% ylabel('J_1');
% figure(2);
% plot(timet(368:371),JJ1(368:371),'--b'); 
% hold on
% plot(timet2(463:467),JJT1(463:467),'b'); 
% hold on
% 
% figure (3);
% plot(timet,JJ2,'--r'); 
% hold on
% plot(timet2,JJT2,'r'); 
% hold on
% xlabel('Time (s)');
% ylabel('J_2');
% figure(4);
% plot(timet(368:371),JJ2(368:371),'--r'); 
% hold on
% plot(timet2(463:467),JJT2(463:467),'r'); 
% hold on
% 
% figure (5);
% plot(timet,JJ3,'--m'); 
% hold on
% plot(timet2,JJT3,'m'); 
% hold on
% xlabel('Time (s)');
% ylabel('J_3');
% figure(6);
% plot(timet(368:371),JJ3(368:371),'--m'); 
% hold on
% plot(timet2(463:467),JJT3(463:467),'m'); 
% hold on
% 
% figure (7);
% plot(timet,JJ4,'--c'); 
% hold on
% plot(timet2,JJT4,'c'); 
% hold on
% xlabel('Time (s)');
% ylabel('J_4');
% figure(8);
% plot(timet(368:371),JJ4(368:371),'--c'); 
% hold on
% plot(timet2(463:467),JJT4(463:467),'c'); 
% hold on
% % figure (9);
% plot(timet,JJ5,'--g'); 
% hold on
% plot(timet2,JJT5,'g'); 
% hold on
% xlabel('Time (s)');
% ylabel('J_5');
% figure(10);
% plot(timet(368:371),JJ5(368:371),'--g'); 
% hold on
% plot(timet2(463:467),JJT5(463:467),'g'); 
% hold on



% plot(timet,JJ2,'--r'); 
% hold on
% plot(timet,JJ3,'--m'); 
% hold on
% plot(timet,JJ4,'--c'); 
% hold on
% plot(timet,JJ5,'--g'); 
% hold on
% plot(timet2,JJT2,'r'); 
% hold on
% plot(timet2,JJT3,'m'); 
% hold on
% plot(timet2,JJT4,'c'); 
% hold on
% plot(timet2,JJT5,'g'); 
% hold on
%legend ('J1','J2','J3','J4','J5','J1','J2','J3','J4','J5');  
%xlabel('Time (s)');
%ylabel('Costs');
%axes('Position',[0.45,0.55,0.38,0.28]);


% figure (2);
% plot(timet2,JJT1,'--b'); 
% hold on
% plot(timet2,JJT2,'--r'); 
% hold on
% plot(timet2,JJT3,'--m'); 
% hold on
% plot(timet2,JJT4,'--c'); 
% hold on
% plot(timet2,JJT5,'--g'); 
% hold on
% legend ('J1','J2','J3','J4','J5');  
% xlabel('Time (s)');
% ylabel('Costs');
% axes('Position',[0.45,0.55,0.38,0.28]); % 生成子图   左右  上下 宽窄
% %plot(i,c(i),':.m','LineWidth',0.7); 