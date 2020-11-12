//GET!!!
close all;
clear variables;
data = importdata("data.txt");
scale = importdata("settings.txt");
dV = scale(1);
dt = scale(2);
U = dV * data;
t = ((1:length(data)) * dt)';
f1 = figure();
[mz,iz] = max(U);
T = t(iz);
T2 = max(t) - T;
plot(t,U,"kp-",'Color',[rand(1),rand(1),rand(1)], 'MarkerIndices', 1:20:length(U), 'MarkerSize',10),;
xlabel({'Time,',' sec'},'Color',[rand(1),rand(1),rand(1)]);
ylabel('Voltage, V','Color',[rand(1),rand(1),rand(1)]);
title({'Voltage',' on',' capacitor'},'Color',[rand(1),rand(1),rand(1)]);
legend("U(t)", "Location","northeastoutside");
text(max(t) * 0.6, max(U) * 0.8, ['Time of charging = ',num2str(T), 'c'], 'BackgroundColor','w');
text(max(t) * 0.6, max(U) * 0.7, ['Time of discharging = ',num2str(T2),'c'], 'BackgroundColor','w');
grid on;
set(gcf,'Visible','on');
saveas(f1,'Matlab1.fig');
saveas(f1,'Matlab1.png');
//DET!!!
