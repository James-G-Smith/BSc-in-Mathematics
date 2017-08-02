% the number of components in ff is N=4
clear all
a=0;
b=10;
b=0.1;
N=1000;
h = (b-a)/N; %the step size
t(1) = a;
sq3=sqrt(3)/2;
sq2=sqrt(2);
%x(:,1) = [1.1;0.4;-0.5;-1;-0.5;0.5;0;sq3;sq3;0;-sq3;-sq3]; %initial conditions
%x(:,1) = [1;sq2;0;-sq2;-1;-sq2+0*0.01;0;sq2;0;sq2;1;sq2;0;-sq2;-1;-sq2];
x(:,1) = [sq2;1;0;-1;-sq2;-1;0;1;0;1;sq2;1;0;-1;-sq2;-1];
for i = 1:N
    k1 = h*ff(x(:,i));
    k2 = h*ff(x(:,i)+0.5*k1);
    k3 = h*ff(x(:,i)+0.5*k2);
    k4 = h*ff(x(:,i)+k3);
    x(:,i+1) = x(:,i) + (k1 + 2*k2 + 2*k3 + k4)/6;
    t(i+1) = a + i*h;
end

%plot(t,x(2,:));
%plot(x(1,:),x(5,:));
%plot(x(1,:),x(5,:));
clf
hold on
plot(x(1,:),x(9,:),'-r'); 
%plot(x(2,:),x(10,:),'-b');
%plot(x(3,:),x(11,:),'-g');
%plot(x(4,:),x(12,:),'-y');
%plot(x(5,:),x(11,:),'xr');
%plot(x(6,:),x(12,:),'or');
