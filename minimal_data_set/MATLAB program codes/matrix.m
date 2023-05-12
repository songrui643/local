clear 
clc
syms x y z pi1 R2 R3 pi2 F U1 U2 R6 c3 L C3 C5;
A=[(1-2*x)*(y*z*pi1+z*R2+R3-y*pi2+F),x*(1-x)*(z*pi1-pi2),x*(1-x)*(y*pi1+R2);
    y*(1-y)*(U1-U2),(1-2*y)*(x*(U1-U2)+U2-z*R6+c3*L),-y*(1-y)*R6;
    z*(z-1)*R2,0,(2*z-1)*(x*R2+C3-C5);];
B=[(1-2*x)*(z*pi1+z*R2+R3-pi2+F),x*(1-x)*(z*pi1-pi2),x*(1-x)*(pi1+R2);
    0,(1-2)*(x*(U1-U2)+U2-z*R6+c3*L),0;
    z*(z-1)*R2,0,(2*z-1)*(x*R2+C3-C5);];
[x1,y1] = eig(B)
C=[(1-2*x)*(R3-y*pi2+F),x*(1-x)*(-pi2),x*(1-x)*(y*pi1+R2);
    y*(1-y)*(U1-U2),(1-2*y)*(x*(U1-U2)+U2+c3*L),-y*(1-y)*R6;
    0,0,(-1)*(x*R2+C3-C5);];
[x2,y2] = eig(C)
D=[(1-2*x)*(y*pi1+R2+R3-y*pi2+F),x*(1-x)*(pi1-pi2),x*(1-x)*(y*pi1+R2);
    y*(1-y)*(U1-U2),(1-2*y)*(x*(U1-U2)+U2-R6+c3*L),-y*(1-y)*R6;
    0,0,(2*z-1)*(x*R2+C3-C5);];
[x3,y3] = eig(D)