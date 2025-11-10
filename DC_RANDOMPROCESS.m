% ALGORITHM:
% 1. Generate random variables Y and Z (40 samples each from normal distribution)
% 2. Calculate mean and variance of Y and Z
% 3. Construct random process: X(t) = Y*sin(h0*t) + Z*cos(h0*t)
% 4. Calculate autocorrelation components for time shift k
% 5. Compute and display correlation equation C

y = randn([1 40]);
my = round(mean(y));
z = randn([1 40]);
disp(z);
mz=round(mean(z));
disp('mean of random variables');
disp(mz);
vy=round(var(y));
disp('variance of random variables');
vz=round(var(z));
disp(vz);
t = sym('t','real');
h0=3;
x=(y.*sin(h0*t)+z.*cos(h0*t));
k=2;
xk=y.*sin(h0*(t+k))+z.*cos(h0*(t+k));
x1=sin(h0*t)*sin(h0*(t+k));
x2=cos(h0*t)*cos(h0*(t+k));
c=vy*x1+vz*x1;
disp(x1);
disp(x2);
disp('Equation for C:');
disp(c);