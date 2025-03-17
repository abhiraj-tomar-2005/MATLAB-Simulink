n=-1:3; 
x = 1:5; 
k = 0:500; 
w = (pi/500)*k;
X=x*(exp(-j*pi/500)) .^ (n'*k);
w = [0:1:500]*pi/500;

X
  magX = abs(X); 
  angX = angle(X); 

  figure;
  subplot(2,1,1); plot(w/pi,magX); grid
  xlabel('frequency in pi units'); title('Magnitude Part'); ylabel('Magnitude')
  subplot(2,1,2); plot(w/pi,angX); grid
  xlabel('frequency in pi units'); title('Angle Part'); ylabel('Radians')
