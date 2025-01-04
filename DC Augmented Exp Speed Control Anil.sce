clc;
clear;
close;
Ra=343;
Rsh=1.06;
Ish2=0.3;
Ish3=0.6;
p=4;
A=4;
Ia=[1.6,4,6,8,9.8];
z=2;
phi=4;
Eb=[185,198,209,220,230];
It1=Ia+Ish2
E1=Eb+Ia*Ra
N1=((Eb-It1*Ra)*(60*A))/(p*z*phi);
It2=Ia+Ish3;
E2=Eb+Ia*Ra
N2=((Eb-It2*Ra)*(60*A))/(p*z*phi);
Eb1=230;
Eb2=228;
If=[0.28,0.36,0.44,0.5,0.58];
N3=((Eb1-Ia*Ra)*(60*A))/(p*z*phi);
N4=((Eb2-Ia*Ra)*(60*A))/(p*z*phi);
c=color("blue");
plot2d4(Eb,N1,style=c)
xlabel("voltage(v)","fontsize",5);
ylabel("speed(rpm)","fontsize",5);c1=color("red");
plot2d4(Eb,N2,style=c1)
title("armature control method",opt=2);
c=color("blue");plot2d4(If,N3,style=c);
xlabel("field current")
ylabel("speed")
c1=color("red");
plot2d4(If,N4,style=c1)
title("field control method",opt=1)
