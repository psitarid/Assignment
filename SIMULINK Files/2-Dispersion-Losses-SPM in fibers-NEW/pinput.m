function u=pinput(input) 

P0=input(1); %[W] initial peak power of signal source
C=input(2);% Chirping Parameter
m=input(3);% Super Gaussian parameter (m=1 ==> Gaussian)
bitsnum=input(4); %number of bits
Tfwhm = input(5); %[psec] initial pulse width
t0=input(6);%pulse center (psec)
t=input(7); %time in psec
T0 = Tfwhm/(2*(log(2))^0.5);
bitrate=input(8);
bit_inter=(1/bitrate)*10^12;
%u= sqrt(P0).*exp(-0.5*(1+1i*C)*((t*10^12-t0)./T0).^(2*m));

%%%
if bitsnum==1
    u=sqrt(P0).*exp(-0.5*(1+j*C)*((t*10^12-t0)./T0).^(2*m));
end
for k=1:bitsnum
 l=1;
u0(k,l) = sqrt(P0).*exp(-0.5*(1+1i*C)*((t*10^12-(t0+bit_inter*k-bit_inter))./T0).^(2*m));
%
l=l+1;
end

u=0;
for k=1:bitsnum
   u=u+u0(k,:);
    plot(t,abs(u.^2),'r')
    hold on
end


