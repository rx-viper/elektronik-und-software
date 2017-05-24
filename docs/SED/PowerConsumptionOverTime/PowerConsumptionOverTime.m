%% Leistungsaufnahme definieren
Time            = [  0  80  80  90  90 100 100 200 200 220 220 300]';
Motor           = [  0   0  15  15  15  15   0   0  15  15   0   0]';
HeatProbes      = [  0   0   0   0 180 180 180 180 180 180   0   0]';
Microcontroller = 2*ones(size(Time));
RaspberryPi     = 2*ones(size(Time));

%% Plotten als Area-Plot
area(Time, [Microcontroller, RaspberryPi, Motor, HeatProbes])
grid on

%% Titel und Legende
title('Power consumption over time')
legend('Microcontroller', 'Rasperry Pi', 'Motor', 'Heat probes')

%% X Achse
xlabel('Time [s]')

XTick = 0:20:300;
XTickLabel = num2cell(XTick);
XTickLabel{XTick==0} = 'LO';
XTickLabel{XTick==80} = 'SOE';
XTickLabel{XTick==200} = '~SOE';
set(gca, 'XTick', XTick)
set(gca, 'XTickLabel', XTickLabel)

%% Y Achse
ylabel('Power [W]')

%% Grafik speichern
saveas(gca, 'PowerConsumptionOverTime.svg')
