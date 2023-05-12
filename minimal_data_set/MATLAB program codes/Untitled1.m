clear all
clc
P1=210000;P2=150000;V1=300000;V2=250000;pi1=18000;pi2=18000;
c1=110;c2=420;c3=240;C3=500;C4=700;C5=60000;R6=500;R1=50000;R3=40000;F=2000;gama=15000; n1=0.26;tao1=0.1;
R2=20000;
for i=0.27
    figure(1)
    set(0,'defaultfigurecolor','w')
    %[t,y]=ode45(@(t,y) nec(t,y,P1,P2,V1,V2,pi1,pi2,c1,c2,c3,C3,C4,C5,R6,R1,R2,R3,F,gama,n1,tao1),[0 120],[i 0.8 0.64]);
    [t,y]=ode45(@(t,y) nec(t,y,P1,P2,V1,V2,pi1,pi2,c1,c2,c3,C3,C4,C5,R6,R1,R2,R3,F,gama,n1,tao1),[0 120],[i 0.4 0.64]);
    plot3(y(:,1),y(:,2),y(:,3),'k+','linewidth',1);
    hold on
end

R2=35000;
%for j=0.8
for j=0.4
    [t,y]=ode45(@(t,y) nec(t,y,P1,P2,V1,V2,pi1,pi2,c1,c2,c3,C3,C4,C5,R6,R1,R2,R3,F,gama,n1,tao1),[0 120],[0.27 j 0.64]);
    plot3(y(:,1),y(:,2),y(:,3),'k-','linewidth',1);
    hold on     
end  
% the 3rd line

R2=50000;  
for k=0.64
    %[t,y]=ode45(@(t,y) nec(t,y,P1,P2,V1,V2,pi1,pi2,c1,c2,c3,C3,C4,C5,R6,R1,R2,R3,F,gama,n1,tao1),[0 120],[0.27 0.8 k]);
    [t,y]=ode45(@(t,y) nec(t,y,P1,P2,V1,V2,pi1,pi2,c1,c2,c3,C3,C4,C5,R6,R1,R2,R3,F,gama,n1,tao1),[0 120],[0.27 0.4 k]);
    plot3(y(:,1),y(:,2),y(:,3),'k--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z','Rotation',360,'position',[-0.1 1 1.1]);
    grid off
    hold on  
    legend({'R2=20000','R2=35000','R2=50000'},'location','northeast');
    view(0,0);
    %title('图 药品销售收入的影响','FontWeight','bold','position',[0 0 -0.2]);
end