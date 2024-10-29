clear;
read_ibtracs;
knots_to_mps=1852/3600; 

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

ints=wind1*knots_to_mps;
ints(t_end1+48:t_end1+48+t_end2-t_start2)=wind2(t_start2:t_end2)*knots_to_mps;
t_start2=t_end1+48;
for i=t_start2:360
    if ( isnan(ints(i)) )
         t_end2=i-1;
    break;
    end
end    


h=figure(1);
plot(ints,'LineWidth',1.0);
set(gca,'XTickLabel',{'0210','0215','0220','0225','0302','0307','0312'},...
    'XTick',[ 43 83 123 163 203 243 283],...
    'YTickLabel',{'20','40','60','80'},...
    'YTick',[20 40 60 80],...
    'Layer','top');
set(gca,'PlotBoxAspectRatio',[1.5 1 1]);
xlim([t_start1 t_end2]);
ylim([0 80]);
xlabel('Date','FontSize',12);
ylabel('Vmax','FontSize',12);
exportgraphics(gcf,'Freddy_ints.pdf','ContentType','vector')
close(h);

