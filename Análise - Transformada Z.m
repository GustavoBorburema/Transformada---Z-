n = -10:10;
alfa = 1;
x = alfa.^n .* (n >= 0);
stem(n,x)
xlabel('n')
ylabel('x(n) = (alfa)^n * u(n)')
title('Gráfico da função x(n) = (alfa)^n * u(n)')
grid; % adiciona uma grade ao gráfico 

%z = exp(1j * pi * linspace(-1, 1, 2000));
%Xz = polyval(polyfit(n, x, length(n) - 1), z.^(-1));
%figure
%subplot(2,1,1)
%plot(real(z), abs(Xz))
%xlabel('Re[z]')
%ylabel('|X(z)|')
%title('Transformada Z de x(n)')

%subplot(2,1,2)
%plot(real(z), angle(Xz))
%xlabel('Re[z]')
%ylabel('ang(X(z))')
%title('Transformada Z de x(n)')

w = linspace(-pi,pi,1000);
Xw = polyval(polyfit(n, x, length(n) - 1), exp(-1j*w));
figure
subplot(2,1,1)
plot(w, abs(Xw))
xlabel('w')
ylabel('|X(w)|')
title('Transformada de Fourier de x(n)')

subplot(2,1,2)
plot(w, angle(Xw))
xlabel('w')
ylabel('ang(X(w))')
title('Transformada de Fourier de x(n)')

figure
zplane([1],[1,-alfa])
xlabel('Re')
ylabel('Im')
title('Diagrama de polos e zeros')
