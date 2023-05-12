function dydt=nec(t,y,P1,P2,V1,V2,pi1,pi2,c1,c2,c3,C3,C4,C5,R6,R1,R2,R3,F,gama,n1,tao1)
dydt=zeros(3,1);
dydt(1)=y(1)*(1-y(1))*(y(2)*y(3)*pi1+y(3)*R2+R3-y(2)*pi2+F);
dydt(2)=y(2)*(1-y(2))*(y(1)*(V1-P1+n1*tao1-c1)+(1-y(1))*(V2-P2-gama-c2)-y(3)*R6+c3);
dydt(3)=y(3)*(y(3)-1)*(y(1)*R2+C3-C5);
end

