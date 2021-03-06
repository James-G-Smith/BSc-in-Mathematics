function y=ff(x)

% x(1,..,N) corresponds to x_1,...,x_N
% x(N+1,..,2N) corresponds to y_1,...,y_N
hh=size(x);
N=hh(1,1)/2;
%k=[1,-1,1,-1]; % length N
k=ones(1,N);
z = zeros(1,2*N);

for i=1:N
    for j=1:N
        if j==i
            z(i)=z(i);
            z(N+i)=z(N+i);
        else
            z(i)=z(i) - k(j)*(x(N+i)-x(N+j))/((x(i)-x(j))^2 + (x(N+i)-x(N+j))^2);
            z(N+i)=z(N+i) + k(j)*(x(i)-x(j))/((x(i)-x(j))^2 + (x(N+i)-x(N+j))^2);
        end
    end
end
y=z';


