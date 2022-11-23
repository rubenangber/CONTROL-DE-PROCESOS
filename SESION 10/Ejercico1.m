%Apartado A
s = tf('s'); 
k = 8;
tau = 4;
G1 = k/(tau*s+1); 
figure(1)
step(G1)

s = tf('s'); 
k = 6;
tau = 1;
G2 = k/(tau*s+6); 
figure(2)
step(G2)

s = tf('s'); 
k = 2;
tau = 8;
G3 = k/(tau*s+3); 
figure(3)
step(G3)

s = tf('s'); 
k = 3;
tau = 1;
G4 = k/(tau*s-3); 
figure(4)
step(G4)

%Apartado B
s = tf('s'); 
k = 1;
tau = 1;
G5 = k/(tau*s+1); 
figure(5)
step(G5)
hold on

s = tf('s'); 
k = 1;
tau = 20;
G5 = k/(tau*s+1); 
figure(5)
step(G5)
hold on

s = tf('s'); 
k = 1;
tau = 40;
G5 = k/(tau*s+1); 
figure(5)
step(G5)
hold on
legend('tau = 1','tau = 20','tau = 40')