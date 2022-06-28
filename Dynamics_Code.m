clc;
close;
clear all;
format short
m1=8.3014796064;m2=2.6233;m3=2.905; m4=0.894;
l1=.4;l2=.4;
g=9.80;

%% Ploting 


syms q1 q2 d3 q4 
L1=1;L2=1;
d1=0.5;
     x=1.3;
     y=1.3;
     z=0.1;

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
eq1=tem1==x;
eq2=tem2==y;
eq3=tem3==z;
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
  drawnow
  
r=.3;


%%
I5=0;
I1=3.47;
I2=4.12;
I3=4.37;
I4=4.27;
n=1;

  for t=0:.01:2
    q1=0.5*t;
    q2=0.6*t;
    d3=0.1*t;
    dd3=0.1;
    ddd3=0;
    dq1=0.5;
    ddq1=0;
    dq2=0.6;
    ddq2=0;
T(1,1)= ((m2/3+m3+m4)*l1^2 + (m3+2*m4)*l1*l2*cos(q2)+(m3/3+m4)*l2^2)*ddq1 - ((m3/2+m4)*l1*l2*cos(q2)+(m3/3+m4)*l2^2)*ddq2^2 - l1*l2*sin(q2)*((m3+2*m4)*dq1*dq2 -(m3/2+m4)*dq2^2);
T(2,1)= -((m3/2)*l1*l2*cos(q2)+(m3/3)*l2^2)*ddq1 + (m3/3)*l2^2*ddq2 + (m3/2)*l2*l1*sin(q2)*dq1^2;
T(3,1)= m4*ddd3 - g*m4;
Res(n,1)=T(1,1);
Res(n,2)=T(2,1);
Res(n,3)=T(3,1);



q=q1;d=d1;a=0;alpha=0; %for i=1;
T01=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q2;d=0;a=L1;alpha=0;  %fori=2;
T12=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=0;d=0;a=L2;alpha=0; % for i=3;
T23=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
q=q4;d=d3;a=0;alpha=0; %for i=4;
T34=[cos(q) -sin(q) 0 a;sin(q)*cos(alpha) cos(q)*cos(alpha) -sin(alpha) -sin(alpha)*d;sin(q)*sin(alpha) cos(q)*sin(alpha) cos(alpha) cos(alpha)*d;0 0 0 1];
T03=T01*T12*T23;
T04=T01*T12*T23*T34;

% syms q4
% eqm= (T04)\(T34)==T03;
% eq11=eqm(1,4);
% eq22=eqm(2,4);
% 
% eqms=solve(eq22,q4);
% q4=double(real(eqms(1)));

axis([-0.1 2.2 -0.1 2.2 0 1]);
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
  
  X(1,n)=T04(1,4);
  Y(1,n)=T04(2,4);
  Z(1,n)=T04(3,4);
  set(p0,'X', Ax0, 'Y',Ay0,'Z',Az0)
  set(p1,'X', Ax1, 'Y',Ay1,'Z',Az1)
  set(p2,'X', Ax2, 'Y',Ay2,'Z',Az2)
  set(p3,'X', Ax3, 'Y',Ay3,'Z',Az3)
  set(p4,'X', Ax4, 'Y',Ay4,'Z',Az4)
  set(p5,'X', Ax5, 'Y',Ay5,'Z',Az5)
  drawnow
  pause(.01)
  n=n+1;
  if t==2
      hold on
      plot3(X,Y,Z)
      pause(1)
  end


  end



%%

hold off 
t=0:.01:2;
figure(1)
plot(t,Res(:,1))
hold on
plot(t,Res(:,2))

figure(2)
plot(t,Res(:,3))

