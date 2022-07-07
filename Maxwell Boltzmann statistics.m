clc;   
clear;  
close; 
E = linspace(0,0.5); 
ev = 1.602e-19; 
K = 1.38e-23; 
T = [0; 100; 200; 300; 400; 500];

 for i = 1:length(T)
  for j = 1:length(E)
    F(j) =  (exp(-(E(j))*ev / (K*T(i))));
	endfor
  plot(E, F, 'LineWidth', 2)  
   set( gca,'fontsize',20);
  hold on
 endfor

 hold off
 title('Maxwell Boltzmann Distribution', 'fontsize', 20);
 xlabel("Energy(E)", 'fontsize',20);
 ylabel("f(E)", 'fontsize', 20);
 legend('0K', '100K', '200K', '300K','400K','500K','fontsize' , 20);

