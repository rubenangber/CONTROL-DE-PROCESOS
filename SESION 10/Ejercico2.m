s = tf('s'); 
k = 5;
tau = 4;
tm = 6;
G = k/(tau*s+1)*exp(-tm*s); 
figure(1)
step(G)
hold on
