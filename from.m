% Pozisyon ve zaman verilerini oluşturun
positions = [0, 50, 10, 40, -20, -5, 10, 10, 10, 10, 10];
time = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

% Zaman-varyantı pozisyon verilerini içeren matrisi oluşturun
position_time_matrix = [time', positions'];

% MATLAB Workspace'e pozisyon-zaman matrisini aktarın
assignin('base', 'position_time_matrix', position_time_matrix);
