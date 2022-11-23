%Programa main
clear alln %borra el contenido de las variables de simulaciones anteriores
close all %cierra todas las ventanas graficas

%CASO BASE
R = 1.5*10^(3); 
C = 4*10^(-6); 
%Entrada/Causa
Vi = 10;
%Condiciones iniciales
Vc0 = 0;
q0 = C*Vc0; % altura inicial en t=0
tspan=[0 0.1];


%Representar la poblacion de bacterias frente al tiempo
[t_base,q_base] = ode45(@(t_base,q_base) ODEredRC(t_base,q_base,R,C,Vi), tspan, q0);
figure(1)
%ode45 devuelve la carga en el condensador q(t)
Vc_base = q_base / C;
plot(t_base,Vc_base,'b')
title("Evolucion temporal del voltaje en el consensador")
xlabel('Tiempo'), ylabel('Altura h(t)'), grid
hold on

R = 1.5*10^(3); 
C = 8*10^(-6); 
%Entrada/Causa
Vi = 0;
%Condiciones iniciales
Vc0 = 10;
q0 = C*Vc0; % altura inicial en t=0
tspan=[0 0.1];


%Representar la poblacion de bacterias frente al tiempo
[t_base,q_base] = ode45(@(t_base,q_base) ODEredRC(t_base,q_base,R,C,Vi), tspan, q0);
figure(1)
%ode45 devuelve la carga en el condensador q(t)
Vc_base = q_base / C;
plot(t_base,Vc_base,'r')
title("Evolucion temporal del voltaje en el consensador")
xlabel('Tiempo'), ylabel('Altura h(t)'), grid
legend('Carga inicial 0V','carga final 10V');
