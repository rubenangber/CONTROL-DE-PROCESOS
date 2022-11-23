function [dqdt] = ODEredRC(t,q,R,C,Vi)
dqdt = (1/R)*(Vi - q/C);
end