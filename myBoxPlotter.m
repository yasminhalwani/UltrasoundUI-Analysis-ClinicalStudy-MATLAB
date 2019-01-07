function success=myBoxPlotter(xx,yy,saveFigName)
close all; 
hh=figure;
%% Mann-whitney u test
p = ranksum(xx, yy) 

%% color change
if (p<=0.05)
    backgroundColor=[200/255,254/255,184/255];
  
else 
    backgroundColor=[ 1 1 1];
    disp ' nist'
end
    

	
%% making the box plot pretty
set(hh,'Color',backgroundColor)
set(hh,'Position', [100 100  500 500]);

 boxplot([xx,yy]); 
  ylim([min(min(xx, yy)) - 1 max(max(xx, yy)) + 1]);
  h=findobj(gca,'tag','Box'); set(h,'linewidth',1.5); set(h,'Color', 'k')
  set(gca,'FontName','Cambria Math','FontSize',14,'FontWeight','bold',...
    'XTick',[1 2],'XTickLabel',...
    {' ',' '});
h2 = findobj(gca,'tag','Median');
h3=findobj(gca,'tag','Outliers');
h4=findobj(gcf,'LineStyle','--');

j=2;
patch(get(h(j),'XData'),get(h(j),'YData'),[0 128/255 255/255],'FaceAlpha',.5);
set(h2(j,1),'linestyle','-');
set(h2(j,1),'Color',[0 57/255 115/255])
set(h2(j,1),'linewidth',2);
set(h3(j,1), 'Color', [.2 .2 .2]);


j=1;
patch(get(h(j),'XData'),get(h(j),'YData'),[1 50/255 50/255],'FaceAlpha',.5);
set(h2(j,1),'linestyle','-');
set(h2(j,1),'linewidth',2);
set(h2(j,1),'Color',[136/255 0  21/255]);
set(h3(j,1), 'Color', [.2 .2 .2]);


set(gca,'Visible','on')
set (h4,'LineStyle','-'); set(h4, 'linewidth',2);

% save boxplot
saveas(gca,[saveFigName,'.png']);
success=1;






