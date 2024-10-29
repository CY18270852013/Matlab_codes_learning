clear;
read_ibtracs;

for t=1:4722
    if ( year(t)==2023 && strncmpi(name(:,t)','FREDDY',6) )
         time1=squeeze(iso_time(:,:,t))';    
         lat1=usa_lat(:,t);    
         lon1=usa_lon(:,t);    
         wind1=usa_wind(:,t);    
         pres1=usa_pres(:,t);    
         break;
   end
end 
for i=1:360
    if ( ~isnan(lat1(i)) )
         t_start1=i;
    break;
    end
end    
for i=t_start1:360
    if ( isnan(lat1(i)) )
         t_end1=i-1;
    break;
    end
end    

figure;
h=figure(1);
m_proj('miller','long',[20 130],'lat',[-50 0]);
m_plot(lon1(t_start1:t_end1),lat1(t_start1:t_end1),'-','LineWidth',1);
hold on;
m_plot(lon1(t_start1+6:8:t_end1),lat1(t_start1+6:8:t_end1),'k.','MarkerSize',10);
m_coast('color',[0.1 0.1 0.1],'linewidth',0.8);
m_coast('patch',[0.9 0.9 0.9]);
xlabel('Longitude','FontSize',16);
ylabel('Latitude','FontSize',16);
box on;
% m_grid('grid','off','tickdir','in','ytick',6,'fontsize',11,...
%     'xtick',8,'fontsize',11,'linestyle','none');
set(0,'defaultfigurecolor','w');
exportgraphics(gcf,'Freddy_track1.pdf','ContentType','vector');
close(h);




for tt=t+1:4722
    if ( year(tt)==2023 && strncmpi(name(:,tt)','FREDDY',6) )
         time2=squeeze(iso_time(:,:,tt))';    
         lat2=usa_lat(:,tt);    
         lon2=usa_lon(:,tt);    
         wind2=usa_wind(:,tt);    
         pres2=usa_pres(:,tt);    
         break;
   end
end 
for i=1:360
    if ( ~isnan(lat2(i)) )
         t_start2=i;
    break;
    end
end    
for i=t_start2:360
    if ( isnan(lat2(i)) )
         t_end2=i-1;
    break;
    end
end    


h=figure(1);
m_proj('miller','long',[33 45],'lat',[-25 -15]);
m_plot(lon2(t_start2:t_end2),lat2(t_start2:t_end2),'-','LineWidth', 1.5);
hold on;
m_plot(lon2(t_start2+2:8:t_end2),lat2(t_start2+2:8:t_end2),'k.','MarkerSize',10);
m_coast('color',[0.1 0.1 0.1],'linewidth',0.8);
m_coast('patch',[0.9 0.9 0.9]);
xlabel('Longitude','FontSize',16);
ylabel('Latitude','FontSize',16);
box on;
% m_grid('grid','off','tickdir','in','ytick',6,'fontsize',11,...
%     'xtick',7,'fontsize',11,'linestyle','none');
set(0,'defaultfigurecolor','w');
exportgraphics(gcf,'Freddy_track2.pdf','ContentType','vector');
close(h);