close;
clc;
v=224;
r=0.1504;
pi=3.14;
s1= [2 3.7 4.8 5.7 6.8 7.9 9.2 10 11.4 12.4];
s2= [0.7 1.3 1.6 1.7 2 2.2 2.4 2.7 3.0 3.2];
I= [2 3 4 5 6 7 8 9 11 12];
a=10;
n= [1490 1475 1463 1450 1440 1428 1415 1393 1381 1363];
for(i=1: a)
 t(i)=1.5*(s1(i)-s2(i));
 p(i)=v*I(i);
 o(i)=(2*pi*n(i)*t(i))\60;
 e(i)=o(i)/p(i);
end
cl=gca();
plot(o, e)
plot(o, e, 'o-y') 
plot(o, t) 
plot(o ,t, 'o-r') 
plot(o, I) 
plot(o, I, 'o-b')  
c2=newaxes();
c2.filled="off";
c2.y_location="right";
plot(o, n)
plot(o, n, 'o-g')
xlabel("output power")
ylabel("efficiency, load current, torque, speed")
title("BRAKE TEST ON DC SHUNT MOTOR")

