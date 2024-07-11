f= @(x) x^3-x-1;
ft = @(x) 3*x^2-1;
x0 = input("x0 değerini giriniz: ");
epsilon = input("minimum hata değerini giriniz: ");
max_iterations = input("iterasyon saysını giriniz: ");
x = x0 - f(x0)/ft(x0);
iteration_count = 0;
err = abs(x-x0);
fprintf("\nx0 \t\t\t x \t\t\t f(x0) \t\t\t\t error")
while err > epsilon && iteration_count < max_iterations
x = x0 - f(x0)/ft(x0);
fprintf('\n%0.5f\t\t %0.5f\t\t %0.5f\t\t %0.5f\t\t\n',x0,x,f(x0),err);
err = abs(x-x0);
x0=x;
iteration_count = iteration_count + 1;
end
figure;
fplot(f, [-5, 5], 'b', 'LineWidth', 2); %f fonksiyonunun grafiği [-5, 5]
aralığında çizilir
hold on;
plot(x0, f(x0), 'ro', 'MarkerSize', 10); % Kökü kırmızı daire ile işaretle
xlabel('x');
ylabel('f(x)');
title('Denklem Grafiği ve Kök');
grid on;
figure;
scatter(1:iteration_count, err);%x ve ye koordinatları
xlabel('İterasyon Sayısı');
ylabel('Hata Değeri');
title('Her İterasyondaki Hata Değeri');
grid on;
