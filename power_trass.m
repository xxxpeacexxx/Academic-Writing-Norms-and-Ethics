a=0.98;
t1=0.917;
t2=0.995;
r=10;
n=linspace(2.454064,2.41944,301);
lambda=1540:0.1:1570;
theta=zeros(301,1);
P_b=zeros(301,1);
P_a=zeros(301,1);
P=zeros(301,1);
for i=1:301
    theta(i)=pi*r*n(i)*2*pi*1000/lambda(i);
    P_b(i)=t1^2+a^4*t1^2+a^2*t2^2*(1+t1^2)^2+2*a^2*t1^2*cos(2*theta(i))-2*t1*t2*a*(1+t1^2)*cos(theta(i))-2*a^3*t1*t2*(1+t1^2)*cos(theta(i))*cos(2*theta(i))-2*a^3*t1*t2*(1+t1^2)*sin(theta(i))*sin(2*theta(i));
    P_a(i)=1+4*a^2*t1^2*t2^2+a^4*t1^4+2*a^2*t1^2*cos(2*theta(i))-4*a*t1*t2*cos(theta(i))-4*a^3*t1^3*t2*sin(theta(i))*sin(2*theta(i))-4*a^3*t1^3*t2*cos(theta(i))*cos(2*theta(i));
    P(i)=10*log10(P_b(i)/P_a(i));

end

plot(lambda,P);
xlabel('lambda/nm');
ylabel('Transsmitance T/dB');