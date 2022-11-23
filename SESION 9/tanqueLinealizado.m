%Programa main
clear alln %borra el contenido de las variables de simulaciones anteriores
close all %cierra todas las ventanas graficas

%CASO BASE
kd = 0.004; % constante de descarga
A = 100; %area del deposito
%Entrada/Causa
IncFi = 0.1; % incremento caudal de entrada
%Condiciones iniciales
Inch0 = [0]; % altura inicial en t=0
hbarra = 2500;
tspan=[0 3*10^7];


%Representar la poblacion de bacterias frente al tiempo
[t_base,Inch_base] = ode45(@(t_base,Inch_base) ODEtanqueLinealizado(t_base,Inch_base,kd,A,IncFi,hbarra), tspan, Inch0);
figure(1)
%ode45 devuelve la altura incremental -- Inch
h_base=Inch_base+hbarra; %altura absoluta -- h
plot(t_base,h_base,'b')
title("Evolucion temporal de la altura absoluta en el deposito")
xlabel('Tiempo'), ylabel('Altura h(t)'), grid
hold on

kd = 0.004; % constante de descarga
A = 100; %area del deposito
%Entrada/Causa
IncFi = 0.1005; % incremento caudal de entrada
%Condiciones iniciales
Inch0 = [0]; % altura inicial en t=0
hbarra = 2500;
tspan=[0 3*10^7];


%Representar la poblacion de bacterias frente al tiempo
[t_base,Inch_base] = ode45(@(t_base,Inch_base) ODEtanqueLinealizado(t_base,Inch_base,kd,A,IncFi,hbarra), tspan, Inch0);
figure(1)
%ode45 devuelve la altura incremental -- Inch
h_base=Inch_base+hbarra; %altura absoluta -- h
plot(t_base,h_base,'r-*')
title("Evolucion temporal de la altura absoluta en el deposito")
xlabel('Tiempo'), ylabel('Altura h(t)'), grid