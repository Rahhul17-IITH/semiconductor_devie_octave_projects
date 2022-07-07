clc;   
clear;  
close;
Ev =-0.67;
Ef = -0.09;
Ec= 0.56;
E = linspace(-1,1); 
ev = 1.602e-19; 
K = 1.38e-23;
T = 300;  % analysis at constant temperature
h=6.582e-16;; % in ev
m =9.31e-31; 


for i = 1:length(E)
  F(i) = (1 / (1 + exp((E(i)-Ef)*ev/ (K*T)))); 
  D(i) = (1/(2*pi*pi))*((2*m/(h*h))^1.5)*(E(i) - Ec)^0.5;
  N(i) = F(i)*D(i);
endfor
plot(N,E,'linewidth',2);
set( gca,"fontsize",20);
hold on 
for i = 1:length(E)
  F(i) = (1 / (1 + exp((E(i)-Ef)*ev/ (K*T)))); 
  D(i) = (1/(2*pi*pi))*((2*m/(h*h))^1.5)*(Ev- E(i))^0.5;
  N(i) = (1-F(i))*D(i);
endfor
plot(N,E,'linewidth',2);
set( gca,"fontsize",20);
hold off;


 title('Carrier Concentration for p-type semiconductor', 'fontsize', 20);
 ylabel("Energy (E in eV)", 'fontsize',20);
 xlabel("n(E)(in m^-3)", 'fontsize', 20);
 legend('Electron density','Hole density','fontsize', 20);

 

