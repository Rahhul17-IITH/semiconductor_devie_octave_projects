clc;   
clear;  
close;
ev = 1.602e-19; 
Eg =1.12;
K = 1.38e-23;
T = linspace(0,1000,1000); 
h = 6.626e-34; 
m =9.1e-31; 
for i =1:length(T)
 n(i) =2*(((m*K*T(i))/(2*pi*h*h))^1.5)*exp(-Eg*ev/(2*K*T(i)));
endfor
plot(T, n, 'LineWidth', 2)
set( gca,"fontsize",20);
 title('Intrinsic carrier Concentration vs Temperature', 'fontsize', 20);
 ylabel("concentration (in m^-3)", 'fontsize',20);
 xlabel("Temperature (in K)", 'fontsize', 20)