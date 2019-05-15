figure('Name','REPORT_1','NumberTitle','off');
x1=0:pi/1000:15;
y1=log(x1);
y2=log2(x1);
y3=log10(x1);
positionVector1 = [0.04, 0.66, 0.5, 0.3];
subplot('Position',positionVector1);
set(subplot('Position',positionVector1),'Color',[0 1 1])
hold on
plot(x1,y1,'m','linewidth',2.5)
hold on
subplot('Position',positionVector1);
plot(x1,y2,'b','linewidth',2.5)
hold on
subplot('Position',positionVector1);
plot(x1,y3,'r','linewidth',2.5)
ylim([-4 4]);
legend('log(x)','log2(x)','log10(x)');
%%%%%%%%%%%%%%%%%%%%%%%%%%left middel part%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs = 10000;                             
x2 = -1:1/fs:1;                          
y4 = rectpuls(x2,260e-3);          
positionVector2 = [0.04, 0.44, 0.14, 0.15];
subplot('Position',positionVector2)
plot(x2,y4,'k','linewidth',3),axis([-0.5 0.5 -0.1 1])
ylim([0 1]);
title('rectpuls','fontweight','bold','fontsize',13)
%%%%%%%%%%%%%
x3 = linspace(0,5*pi,1000);   
positionVector3 = [0.22, 0.44, 0.14, 0.15];
subplot('Position',positionVector3);
plot(x3,diric(x3,10),'b','linewidth',3),axis([0 0.5 -0.1 1])
title('diric','fontweight','bold','fontsize',13); 
axis tight;
ylim([-1 1])
xlim([0 15])
%%%%%%%%%%%%%
ang=0:0.01:2*pi; 
x4=2*cos(ang);
y5=2*sin(ang);
positionVector4 = [0.4, 0.44, 0.14, 0.15];
subplot('Position',positionVector4);
plot(x4,y5,'m','linewidth',2.5);
title('circle','fontweight','bold','fontsize',13); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%left last part%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=0:pi/1000:1;
y6=x;
y7=x.^2; 
y8=x.^4;
y9=x.^8; 
y10=x.^0.5
y11=x.^0.25
y12=x.^0.125
positionVector5 = [0.04, 0.038, 0.5, 0.32];
subplot('Position',positionVector5);
plot(x,y6,'g','linewidth',2.5)
hold on
subplot('Position',positionVector5);
plot(x,y7,'color',[0 1 1],'linewidth',2.5)
hold on
subplot('Position',positionVector5);
plot(x,y8,'k','linewidth',2.5)
hold on
subplot('Position',positionVector5);
plot(x,y9,'r','linewidth',2.5)
hold on
subplot('Position',positionVector5);
plot(x,y10,'b','linewidth',2.5)
hold on
subplot('Position',positionVector5);
plot(x,y11,'m','linewidth',2.5)
hold on
subplot('Position',positionVector5);
plot(x,y12,'y','linewidth',2.5)
legend('x','x^2','x^4','x^8','x^(0.5)','x^(0.25)','x^(0.125)')
%%%%%%%%%%%%%%%%%%%%%%%%%%the right top part%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
positionVector = [0.58, 0.44, 0.35, 0.52];
subplot('Position',positionVector);
n=1:10;
Y = ((n.*(n+1))/2);
stem(n,Y,'m')
title('Traingular Number:T=1+2+3+4+...+n=[n(n+1)]/2','fontweight','bold','fontsize',12); 
%%%%%%%%%%%%%%%%%%%%%%%%%%right middle part%%%%%%%%%%%%%%%%
y=sin(x1);
positionVector = [0.58, 0.22, 0.14, 0.13];
subplot('Position',positionVector);
plot(x1,y,'r','linewidth',2.5)
title('sine','fontweight','bold','fontsize',13); 
%%%%%%%%%%%%%%%%%%%%%
y=square(x1);
positionVector = [0.8, 0.22, 0.13, 0.13];
subplot('Position',positionVector);
plot(x1,y,'g','linewidth',2.5)
title('square','fontweight','bold','fontsize',13);
%%%%%%%%%%%%%%%%%%%%%
x=-0.5:pi/1000:0.5;
y=tripuls(x);
positionVector = [0.58, 0.032, 0.14, 0.12];
subplot('Position',positionVector);
plot(x,y,'m','linewidth',2.5)
title('tripuls','fontweight','bold','fontsize',13); 
%%%%%%%%%%%%%%%%%%%%%
y=sawtooth(x1);
positionVector = [0.8, 0.032, 0.13, 0.12];
subplot('Position',positionVector);
plot(x1,y,'y','linewidth',2.5)
title('sawtooth','fontweight','bold','fontsize',13);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%END%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

   