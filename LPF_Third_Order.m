omega = linspace(0,pi,500);
b = [0.0181 0.0543 0.0543 0.0181];
a = [1 -1.76 1.1829 -0.2781];
m = 0:length(b)-1;
l = 0:length(a)-1;
num = b*exp(-j*m'*omega);
den = a*exp(-j*l'*omega);
H = num./den;
subplot(2,2,1);
plot(omega, abs(H));
subplot(2,2,2)
plot(omega,angle(H));

A1 = 2; A2 = 3;
n = 1:100;
fc1 = 0.5; fc2 = 3;
sin1 = A1* sin(2*pi*fc1*n);
sin2 = A2*sin(2*pi*fc2*n);
x = sin1 + sin2;
subplot(2,2,3)
y = filter(b,a,x);
plot(n,x);
hold on
plot(n,y);
legend('x','y')


