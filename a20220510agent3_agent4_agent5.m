%Agent3 m2
x2=[0;2];y2=[1.4;1.4];
plot(x2,y2,'k');
hold on
x44=[2;4];y44=[1.4;1.4];
plot(x44,y44,'b');

x444=[4;40];y222=[1.4;1.4];
plot(x444,y222,'y');

%Agent4 m2
x4=[0;4];y4=[1.3;1.3];
plot(x4,y4,'k');
hold on
x44=[4;8];y44=[1.3;1.3];
plot(x44,y44,'b');

x444=[8;40];y444=[1.3;1.3];
plot(x444,y444,'y');

%Agent5 m2
plot(0,1.2,'bo');

x4=[0;4];y4=[1.2;1.2];
plot(x4,y4,'k');
hold on

x444=[4;40];y444=[1.2;1.2];
plot(x444,y444,'y');

plot(0,1.3,'bo');

x4=[4;8];y4=[1.2;1.2];
plot(x4,y4,'b');
hold on

x444=[8;40];y444=[1.2;1.2];
plot(x444,y444,'y');


legend ('belief of Agent2','belief of Agent3','belief of Agent4','belief of Agent5','Do not use false information received','Do not use true information received','Use true information received');  