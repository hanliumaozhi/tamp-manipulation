close all;
clear all;
clc;

cost8 = [353393.7831401676, 353393.7831401676, 670743.0173831597, 670743.0173831597, 713399.7292435367, 713399.7292435367, 747126.6225240427, 747126.6225240427, 799459.1333913674, 799459.1333913674, 840565.5635411518, 840565.5635411518, 1195023.5074602154, 1195023.5074602154, 1988634.794339196, 1988634.794339196, 2154157.4510734538, 2154157.4510734538, 2267767.229349537, 2267767.229349537, 2673438.294181173, 2673438.294181173, 3358920.816384651, 3358920.816384651];
cost7 = [353393.7831401676, 353393.7831401676, 670743.0173831597, 670743.0173831597, 713399.7292435367, 713399.7292435367, 747126.6225240427, 747126.6225240427, 799459.1333913674, 799459.1333913674, 840565.5635411518, 840565.5635411518, 1195023.5074602154, 1195023.5074602154, 1988634.794339196, 1988634.794339196, 2154157.4510734538, 2154157.4510734538, 2267767.229349537, 2267767.229349537, 2711077.0558155114, 2711077.0558155114, 2748704.314166576, 2748704.314166576];
cost3 = [353393.7831401676, 353393.7831401676, 670743.0173831597, 670743.0173831597, 713399.7292435367, 713399.7292435367, 747126.6225240427, 747126.6225240427, 799459.1333913674, 799459.1333913674, 840565.5635411518, 840565.5635411518, 899893.865496967, 899893.865496967, 956542.6351830773, 956542.6351830773, 996346.7826813788, 996346.7826813788, 1057222.6988122175, 1057222.6988122175, 1344806.7460373864, 1344806.7460373864, 1722984.000034384, 1722984.000034384];
cost2 = [353393.7831401676, 353393.7831401676, 670743.0173831597, 670743.0173831597, 713399.7292435367, 713399.7292435367, 747126.6225240427, 747126.6225240427, 799459.1333913674, 799459.1333913674, 840565.5635411518, 840565.5635411518, 899893.865496967, 899893.865496967, 956542.6351830773, 956542.6351830773, 996346.7826813788, 996346.7826813788, 1057222.6988122175, 1057222.6988122175, 1491687.0674912373, 1491687.0674912373, 1525266.9894192002, 1525266.9894192002];
cost6 = [353393.7831401676, 353393.7831401676, 670743.0173831597, 670743.0173831597, 722426.7025054642, 722426.7025054642, 763424.0331040189, 763424.0331040189, 807365.2268408459, 807365.2268408459, 843724.6843697787, 843724.6843697787, 1196523.2633062915, 1196523.2633062915, 1537362.505087841, 1537362.505087841, 1634835.0099349653, 1634835.0099349653, 1724484.0955583013, 1724484.0955583013, 2366792.9579259944, 2366792.9579259944, 2739887.7815734735, 2739887.7815734735];
cost5 = [353393.7831401676, 353393.7831401676, 670743.0173831597, 670743.0173831597, 722426.7025054642, 722426.7025054642, 763424.0331040189, 763424.0331040189, 807365.2268408459, 807365.2268408459, 843724.6843697787, 843724.6843697787, 1196523.2633062915, 1196523.2633062915, 1537362.505087841, 1537362.505087841, 1634835.0099349653, 1634835.0099349653, 1724484.0955583013, 1724484.0955583013, 2152410.5090020928, 2152410.5090020928, 2185064.8045822955, 2185064.8045822955];
cost4 = [353393.7831401676, 353393.7831401676, 670743.0173831597, 670743.0173831597, 722426.7025054642, 722426.7025054642, 763424.0331040189, 763424.0331040189, 807365.2268408459, 807365.2268408459, 843724.6843697787, 843724.6843697787, 905340.1005547867, 905340.1005547867, 968840.2676320877, 968840.2676320877, 1008682.8184613034, 1008682.8184613034, 1069657.3756183877, 1069657.3756183877, 1482686.1611125688, 1482686.1611125688, 1787267.5483567435, 1787267.5483567435];
cost1 = [353393.7831401676, 353393.7831401676, 670743.0173831597, 670743.0173831597, 722426.7025054642, 722426.7025054642, 763424.0331040189, 763424.0331040189, 807365.2268408459, 807365.2268408459, 843724.6843697787, 843724.6843697787, 905340.1005547867, 905340.1005547867, 968840.2676320877, 968840.2676320877, 1008682.8184613034, 1008682.8184613034, 1069657.3756183877, 1069657.3756183877, 1145841.9647410824, 1145841.9647410824, 1182987.1343512582, 1182987.1343512582];


figure;
hold on;
plot(cost1, 'LineWidth', 5)
plot(cost2, 'LineWidth', 5)
plot(cost3, 'LineWidth', 5)
plot(cost4, 'LineWidth', 5)
plot(cost5, 'LineWidth', 5)
plot(cost6, 'LineWidth', 5)
plot(cost7, 'LineWidth', 5)
plot(cost8, 'LineWidth', 5)
set(gca, 'FontSize', 24, 'FontName', 'Calibri');
xlim([1, 25]);
ylim([300000, 3.5e6]);
xlabel("Action Sequence", 'FontSize', 30, 'FontName', 'Calibri');
ylabel("Total Cost", 'FontSize', 30, 'FontName', 'Calibri')
% legend("1182987", "1525266", "1722984", "1787267", "2185064", "2739887", "2748704", "3358920")
% lg = legend("$1.18\cdot10^{6}$", "$1.53\cdot10^6$", "$1.73\cdot10^6$", "$1.79\cdot10^6$", "$2.19\cdot10^6$", "$2.74\cdot10^6$", "$2.75\cdot10^6$", "$3.36\cdot10^6$", 'FontSize', 18, 'FontName', 'Calibri');
% set(lg,'Interpreter','latex');
% lg.Title.String = "Total Costs";
% set(lg, 'Location', 'eastoutside');