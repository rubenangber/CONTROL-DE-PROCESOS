%Programa main
clear alln %borra el contenido de las variables de simulaciones anteriores
close all %cierra todas las ventanas graficas

%CASO BASE
kd = 0.004; % constante de descarga
A = 100; %area del deposito
%Entrada/Causa
Fi = 0.2; % caudal de entrada
%Condiciones iniciales
h0 = [0]; % altura inicial en t=0
tspan=[0 4*10^5];

%Representar la poblacion de bacterias frente al tiempo
[t_base,h_base] = ode45(@(t_base,h_base) ODEtanqueLineal(t_base,h_base,kd,A,Fi), tspan, h0);
figure(1)
plot(t_base,h_base,'b')
title("Evolucion temporal de la altura en el deposito")
xlabel('Tiempo'), ylabel('Altura h(t)'), grid
hold on

kd = 0.004; % constante de descarga
A = 100; %area del deposito
%Entrada/Causa
Fi = 0.1; % caudal de entrada
%Condiciones iniciales
h0 = [0]; % altura inicial en t=0
tspan=[0 4*10^5];

%Representar la poblacion de bacterias frente al tiempo
[t_base,h_base] = ode45(@(t_base,h_base) ODEtanqueLineal(t_base,h_base,kd,A,Fi), tspan, h0);
figure(1)
plot(t_base,h_base,'r')
title("Evolucion temporal de la altura en el deposito")
xlabel('Tiempo'), ylabel('Altura h(t)'), grid
legend('Fi=0.2','Fi=0.1')