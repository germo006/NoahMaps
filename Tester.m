function Tester(palette)
% TESTER generates a graph using the specified palette so you can see the
% colors
h = plot([randn(5,10)'], 'LineWidth', 3);
h(1).Color = palette{1};
h(2).Color = palette{2};
h(3).Color = palette{3};
h(4).Color = palette{4};
h(5).Color = palette{5};
name = inputname(1);
colNames = name + "\{" + string([1:5]) + "\}";
legend(colNames, "Location","eastoutside")
xlim([1,10])
end

