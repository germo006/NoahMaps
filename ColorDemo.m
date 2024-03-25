function ColorDemo(col,type)
% COLORDEMO plots either a contour plot (type==2) or a dot plot (type==1)
% with a half-black, half-white background to visualize contrast.
% The contour plot only works if you have already created cmap, a gradient
% colormap, with one or more colors. In this case, use that variable as
% `col`


if type ==1 || nargin==1
    figure
    area([0,length(col)+1],[0,length(col)+1],"EdgeColor","none",...
        "HandleVisibility","off","FaceColor","k")
    hold on

    for ii=1:length(col)
        %scatter(ii-0.8,ii,280,col{ii},"filled", "MarkerEdgeColor", "k",...
         %   "LineWidth",2)
        scatter(ii,ii,300,col{ii},"filled")
        %scatter(ii+0.8,ii,280,col{ii},"filled", "MarkerEdgeColor", "w",...
         %   "LineWidth",2)
       % text(ii-0.5,ii+0.8,string(ii), "HorizontalAlignment","left")
    end
    xticks([]); yticks([]);
    ax = gca;
    ax.Box = "off"; ax.XAxis.Color = "none"; ax.YAxis.Color = "none";
    xlim([0 ii+1]); ylim([0 ii+1]);
    % legend(["col{"+string(1:length(col)')+"}"], "Location","eastoutside",...
    %     "Box", "off", "Color","none")
elseif type==2
    figure
    c = contourf(peaks, 50,"LineStyle","none");
    colormap(col)
end
end

