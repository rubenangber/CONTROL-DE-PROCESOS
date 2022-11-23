s = tf('s'); 
k=1;
tau=1;
G = k/(tau*s+1); 
figure(1)
step(G)
hold on

s = tf('s'); 
k=1;
tau=20;
G = k/(tau*s+1); 
figure(1)
step(G)
hold on

s = tf('s'); 
k=1;
tau=40;
G = k/(tau*s+1); 
figure(1)
step(G)
hold on
legend('tau=1','tau=20','tau=40')