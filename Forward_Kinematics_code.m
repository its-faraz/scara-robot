clc;clear all;
format short

L1=1;L2=1;d1=.5;
q1=0;q2=0;q4=0;d3=-0.3;

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
  p0  = line(Ax0,Ay0,Az0,'LineWidth',[3]);
  p1  = line(Ax1,Ay1,Az1,'LineWidth',[3],'Color','k');
  p2  = line(Ax2,Ay2,Az2,'LineWidth',[3],'Color','M');
  p3  = line(Ax3,Ay3,Az3,'LineWidth',[3],'Color','R');
  p4  = line(Ax4,Ay4,Az4,'LineWidth',[15],'Color','black');
  p5  = line(Ax5,Ay5,Az5,'LineWidth',[15],'Color','green');
  view(3);
 n=1;
  drawnow
  for t=0:.01:1
      q1=pi/3*t;
      q2=pi/3*t;
      d3=-pi/10*t;
      q4=-pi/3*t;

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
  
  x(1,n)=T04(1,4);
  y(1,n)=T04(2,4);
  z(1,n)=T04(3,4);
  set(p0,'X', Ax0, 'Y',Ay0,'Z',Az0)
  set(p1,'X', Ax1, 'Y',Ay1,'Z',Az1)
  set(p2,'X', Ax2, 'Y',Ay2,'Z',Az2)
  set(p3,'X', Ax3, 'Y',Ay3,'Z',Az3)
  set(p4,'X', Ax4, 'Y',Ay4,'Z',Az4)
  set(p5,'X', Ax5, 'Y',Ay5,'Z',Az5)
  drawnow
  pause(.01)
  n=n+1;
  if t==1
      hold on
     plot3(x,y,z)
     pause(1)

  end
  end

