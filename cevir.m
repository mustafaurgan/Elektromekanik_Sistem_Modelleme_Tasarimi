% Verilen transfer fonksiyonu
numerator = [0.01, 1];
denominator = [0.0005, 0.016, 0.63001, 6.2002, 10.01, 0];
P_motor = tf(numerator, denominator);

% Transfer fonksiyonunu durum-uzayı formuna dönüştür
[A, B, C, D] = tf2ss(numerator, denominator);

% Oluşturulan durum-uzayı modelini göster
disp('State-space representation:');
disp('A:');
disp(A);
disp('B:');
disp(B);
disp('C:');
disp(C);
disp('D:');
disp(D);

t = 0:0.01:10; % Zaman aralığı
u = ones(size(t)); % Birim basamak sinyali

% State-space modeli için simülasyon yapalım
[y, t] = lsim(ss(A, B, C, D), u, t);

% Sonucu görselleştirelim
plot(t, y);
title('Motor Step Response');
xlabel('Time (s)');
ylabel('Output');