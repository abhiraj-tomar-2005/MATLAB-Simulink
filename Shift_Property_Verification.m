n=0:10; 
x=rand(1,11);
 k=0:500;
 w=(pi/500)*k;
 X=x*(exp(-j*pi/500)).^(n'*k);

 y=x;
 m=n+2;
 
 Y=y*(exp(-j*pi/500)).^(m'*k); 
  
 Y_check=(exp(-j*2).^w).*X;
 error=max(abs(Y-Y_check))

angY=angle(Y);
 angY_check=angle(Y_check);

 figure;
 subplot(2,1,1); plot(w/pi,angY);
 xlabel('frequency in pi units'); title('Angle Part Y'); ylabel('Radians')
 subplot(2,1,2); plot(w/pi,angY_check);
 xlabel('frequency in pi units'); title('Angle Part Y Check'); ylabel('Radians')


