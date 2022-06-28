clc;
close all;
clear;
format short
L1=.4;L2=.4;d1=0.5;L1=1;L2=1;
% d3=.5;
d1=0.5;
%% intial points
syms q1 q2 d3 q4 

     xo=-0.5;
     yo=-0.5;
     zo=0.2;
%      PHIH=-pi/2;

q=q1;d=d1;a=0;alpha=0; %for i=1;
T01=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q2;d=0;a=L1;alpha=0;  %fori=2;
T12=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=0;d=0;a=L2;alpha=0; % for i=3;
T23=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q4;d=d3;a=0;alpha=0; %for i=4;
T34=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
T04=T01*T12*T23*T34;
tem1=T04(1,end);
tem2=T04(2,end);
tem3=T04(3,end);
eq1=tem1==xo;
eq2=tem2==yo;
eq3=tem3==zo;
eq=[eq1,eq2,eq3];
eqs=solve(eq,[q1,q2,d3]);
q1=double(eqs.q1(1));
q2=double(eqs.q2(1));
d3=double(eqs.d3(1));
q=q1;d=d1;a=0;alpha=0; %for i=1;
T01=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q2;d=0;a=L1;alpha=0;  %fori=2;
T12=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=0;d=0;a=L2;alpha=0; % for i=3;
T23=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q4;d=d3;a=0;alpha=0; %for i=4;
T34=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
T02=T01*T12;
T03=T01*T12*T23;
T04=T01*T12*T23*T34;

eqm= (T04)\(T34)==T03;
eq11=eqm(1,4);
eq22=eqm(2,4);

eqms=solve(eq22,q4);
q4=double(real(eqms(1)));
q1o=q1;
q2o=q2;
d3o=d3;
q4o=q4;
%%
%goal position
syms q1 q2 d3 q4 

     xf=1.2;
     yf=1.2;
     zf=1.1;
%      PHIH=-pi/2;

q=q1;d=d1;a=0;alpha=0; %for i=1;
T01=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q2;d=0;a=L1;alpha=0;  %fori=2;
T12=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=0;d=0;a=L2;alpha=0; % for i=3;
T23=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q4;d=d3;a=0;alpha=0; %for i=4;
T34=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
T04=T01*T12*T23*T34;
tem1=T04(1,end);
tem2=T04(2,end);
tem3=T04(3,end);
eq1=tem1==xf;
eq2=tem2==yf;
eq3=tem3==zf;
eq=[eq1,eq2,eq3];
eqs=solve(eq,[q1,q2,d3]);
q1=double(eqs.q1(1));
q2=double(eqs.q2(1));
d3=double(eqs.d3(1));
q=q1;d=d1;a=0;alpha=0; %for i=1;
T01=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q2;d=0;a=L1;alpha=0;  %fori=2;
T12=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=0;d=0;a=L2;alpha=0; % for i=3;
T23=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q4;d=d3;a=0;alpha=0; %for i=4;
T34=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
T02=T01*T12;
T03=T01*T12*T23;
T04=T01*T12*T23*T34;

eqm= (T04)\(T34)==T03;
eq11=eqm(1,4);
eq22=eqm(2,4);

eqms=solve(eq22,q4);
q4=double(real(eqms(1)));
q1f=q1;
q2f=q2;
d3f=d3;
q4f=q4;
axis([-0.1 2.2 -0.1 2.2]);
  Ax0= [0,T01(1,4)];
  Ay0= [0,T01(2,4)];
  Az0=[0,T01(3,4)];
  Ax1 = [T01(1,4),T02(1,4)];
  Ay1 = [T01(2,4),T02(2,4)];
  Az1 = [T01(3,4),T02(3,4)];
  Ax2 = [T02(1,4),T03(1,4)];
  Ay2 = [T02(2,4),T03(2,4)];
  Az2 = [T02(3,4),T03(3,4)];
  Ax3 = [T03(1,4),T04(1,4)];
  Ay3 = [T03(2,4),T04(2,4)];
  Az3 = [T03(3,4),T04(3,4)];
  Ax5 = [T04(1,4)-0.1,T04(1,4)+0.1];
  Ay5 = [T04(2,4)-0.1,T04(2,4)+0.1];
  Az5 = [T04(3,4),T04(3,4)];
  Ax4=[0.1,-0.1];
  Ay4=[.1,-.1];
  Az4=[0,0];

%   Ax5 = [-.1,.1];
%   Ay5=  [0,0];
  p0  = line(Ax0,Ay0,Az0,'LineWidth',3);
  p1  = line(Ax1,Ay1,Az1,'LineWidth',3,'Color','k');
  p2  = line(Ax2,Ay2,Az2,'LineWidth',3,'Color','M');
  p3  = line(Ax3,Ay3,Az3,'LineWidth',3,'Color','R');
  p4  = line(Ax4,Ay4,Az4,'LineWidth',15,'Color','black');
  p5  = line(Ax5,Ay5,Az5,'LineWidth',15,'Color','green');
  view(3);
%% Find cubic Equation 
tf=1;
%for q1
A=[1 0 0 0;1 tf tf^2 tf^3;0 1 0 0;0 1 2*tf 3*tf^2];
B=[q1o q1f 0 0]';
C=inv(A)*B;
ao=C(1,1);a1=C(2,1);a2=C(3,1);a3=C(4,1);
%for q2
A=[1 0 0 0;1 tf tf^2 tf^3;0 1 0 0;0 1 2*tf 3*tf^2];
B=[q2o q2f 0 0]';
C=inv(A)*B;
bo=C(1,1);b1=C(2,1);b2=C(3,1);b3=C(4,1);
%for q4
A=[1 0 0 0;1 tf tf^2 tf^3;0 1 0 0;0 1 2*tf 3*tf^2];
B=[q4o q4f 0 0]';
C=inv(A)*B;
co=C(1,1);c1=C(2,1);c2=C(3,1);c3=C(4,1);
%for d3
A=[1 0 0 0;1 tf tf^2 tf^3;0 1 0 0;0 1 2*tf 3*tf^2];
B=[d3o d3f 0 0]';
C=inv(A)*B;
eo=C(1,1);e1=C(2,1);e2=C(3,1);e3=C(4,1);
%%
n=1;
  for t=0:.01:tf
q1=ao+a1*t+a2*t^2+a3*t^3;
q2=bo+b1*t+b2*t^2+b3*t^3;
q4=co+c1*t+c2*t^2+c3*t^3;
d3=eo+e1*t+e2*t^2+e3*t^3;

q=q1;d=d1;a=0;alpha=0; %for i=1;
T01=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q2;d=0;a=L1;alpha=0;  %fori=2;
T12=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=0;d=0;a=L2;alpha=0; % for i=3;
T23=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q4;d=d3;a=0;alpha=0; %for i=4;
T34=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
T02=T01*T12;
T03=T01*T12*T23;
T04=T01*T12*T23*T34;

axis([-2 2.2 -2 2.2 -1 1.5]);
  Ax0= [0,T01(1,4)];
  Ay0= [0,T01(2,4)];
  Az0=[0,T01(3,4)];
  Ax1 = [T01(1,4),T02(1,4)];
  Ay1 = [T01(2,4),T02(2,4)];
  Az1 = [T01(3,4),T02(3,4)];
  Ax2 = [T02(1,4),T03(1,4)];
  Ay2 = [T02(2,4),T03(2,4)];
  Az2 = [T02(3,4),T03(3,4)];
  Ax3 = [T03(1,4),T04(1,4)];
  Ay3 = [T03(2,4),T04(2,4)];
  Az3 = [T03(3,4),T04(3,4)];
  Ax5 = [T04(1,4)-0.1,T04(1,4)+0.1];
  Ay5 = [T04(2,4)-0.1,T04(2,4)+0.1];
  Az5 = [T04(3,4),T04(3,4)];
  Ax4=[0.1,-0.1];
  Ay4=[.1,-.1];
  Az4=[0,0];
  
  x(1,n)=T04(1,4);
  y(1,n)=T04(2,4);
  z(1,n)=T04(3,4);
  set(p0,'X', Ax0, 'Y',Ay0,'Z',Az0)
  set(p1,'X', Ax1, 'Y',Ay1,'Z',Az1)
  set(p2,'X', Ax2, 'Y',Ay2,'Z',Az2)
  set(p3,'X', Ax3, 'Y',Ay3,'Z',Az3)
  set(p4,'X', Ax4, 'Y',Ay4,'Z',Az4)
  set(p5,'X', Ax5, 'Y',Ay5,'Z',Az5)
  if t==tf
  hold on
  plot3(x,y,z)
  plot3(xo,yo,zo,'r*',LineWidth=10)
  text(xo+0.3,yo+0.1,zo+0.1,"Start Point",FontSize=10,color=[0.46 0.27 0.55])
  plot3(xf,yf,zf,'b*',LineWidth=10)
  text(xf+0.3,yf+0.1,zf+0.1,"Goal Point",FontSize=10,color=[0.46 0.27 0.55])


  end
  drawnow
  pause(.01)
  n=n+1;

  end

