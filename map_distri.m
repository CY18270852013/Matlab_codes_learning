%% 程序说明
% 本程序是绘制SIF的空间分布或距平分布的示例程序
% -------------------------------------------------------------------------
% 作者：南京大学 大气科学学院 陈久毅
% Copyright：Jiuyi Chen, School of Atmospheric Science, Nanjing University
% 原始版本为2021年3月做本科毕业论文时所做，本文件建于2021年11月
% 修改记录：2021年12月11日，增加2个子区域绘制代码
% 最新版本：2021年12月11日
% -------------------------------------------------------------------------
% 需要先手动加载出来待绘制的数据
%--------------------------------------------------------------------------
filefolder = 'D:/OneDrive - 南京大学\';
filefolder = 'C:\Users\16021\OneDrive - 南京大学\';
%--------------------------------------------------------------------------
%% 加载地图文件，构造经纬矩阵
%--------------------------------------------------------------------------
% 调整绘图区域和空间分辨率
lonmin = -180;
lonmax =  180;
latmin =  -90;
latmax =   90;
dx = 0.25;
lon = lonmin:dx:lonmax-dx;
lat = latmin:dx:latmax-dx;
[Plg,Plt] = meshgrid(lon,lat);
% lonmin =  105;
% lonmax =  125;
% latmin =   24;
% latmax =   36;
%--------------------------------------------------------------------------
ChinaL=shaperead([filefolder,'SIF\maps\bou2_4l.shp']);
Chinax = [ChinaL(:).X];
Chinay = [ChinaL(:).Y];
RiverL=shaperead([filefolder,'\SIF\maps\hyd2_4l.shp']);
RiverP=shaperead([filefolder,'\SIF\maps\hyd2_4p.shp']);
Riverlx = [RiverL(:).X];
Riverly = [RiverL(:).Y];
Riverpx = [RiverP(:).X];
Riverpy = [RiverP(:).Y];
%--------------------------------------------------------------------------
%% 设置绘图colorbar
load([filefolder,'SIF\colorbar\MPL_YlGnBu'])
colorbarname = flipud(MPL_Blues);
% 常用colorbar
% 降水分布 MPL_Blues; 降水距平 MPL_RdBu_16lev;
% 土壤湿度距平 CBR_drywet； % 土壤湿度分布CBR_wet
% 植被分布 MPL_Greens, MPL_YlGn; 
% SIF距平 MPL_BrBG_10lev;  EVI距平 MPL_BrBG_16lev;
% PAR,APAR分布 jet;   PAR,APAR距平 BlWhRe_16lev;
%--------------------------------------------------------------------------
%% 设置地形MASK
MASKfile = 'MASK_nomask_005';
load([filefolder,'SIF\1 some useful data\',MASKfile]) 
% 常用MASK
% 研究区域 MASK_+25pct_rain_0_5_adjust
% 中国区域0.5度 MASK_China_0_5; 中国区域0.05度 MASK_China_0_05;
% 江苏安徽0.5度 MASK_SuWan.mat; 江苏安徽0.05度 MASK_SuWan_0_05;
% 长江中下游10省0.05度 MASK_Changjiang10province_0_05
%--------------------------------------------------------------------------
%% 绘图示例
% 绘图数据
% mm = 6;
plotdata = 100-Pi-Pt;
% 开启图窗绘图
fg = figure();
set(fg,'position',[100 100 500 360]);
m_proj('mercator','lon',[lonmin,lonmax],'lat',[-60,70]);  % Northern China
m_pcolor(Plg,Plt,plotdata);  % 
hold on
% m_scatter(Plg(~isnan(PV_p')),Plt(~isnan(PV_p')),0.8,[0,0,0]);  % 
colormap(MPL_YlGnBu)
% 调整colorbar范围和colorbar名称
caxis([0,100])
hold on
h = colorbar;
h.Label.String = 'evaporation (%)';
h.Ticks = 0:20:100;
h.FontSize = 10;
h.FontWeight = 'bold';
h.TickDirection = 'none';
h.Location = 'southoutside';
% 调整图题名称
title('proportion of soil transpiration','FontSize', 12, 'Fontname', 'Times New Roman', 'FontWeight', 'bold');
% m_plot(Chinax,Chinay,'k-.','LineWidth',1.5);
% m_plot(Riverlx,Riverly,'b-','LineWidth',1);
% m_plot(Riverpx,Riverpy,'b-','LineWidth',1);
m_grid('Linestyle', 'none', 'xtick', 5, 'ytick', 5,... 
    'LineWidth', 2, 'FontWeight', 'bold', 'FontSize', 10);

%% 南海小地图
ax2 = axes('position',[0.7,0.2,0.1,0.15]);
m_proj('mercator','lon',[105,125],'lat',[0,25]);  % Northern China
m_pcolor(Plg,Plt,plotdata); %
caxis([0,1]);
hold on
m_coast;%画出海岸线
m_plot(Chinax,Chinay,'k');
% m_plot(Riverlx,Riverly,'b');
% m_plot(Riverpx,Riverpy,'b');
m_grid('Linestyle','none','xtick',2,'fontsize',6,'ytick',2,'fontsize',6);
hold off

%% 绘制两个子区域
% m_line([120,122.5],[35.5,30],'Color','r','LineWidth',2)
% m_line([120,107.5],[35.5,32],'Color','r','LineWidth',2)
% m_line([107.5,110],[32,26.5],'Color','r','LineWidth',2)
% m_line([110,122.5],[26.5,30],'Color','r','LineWidth',2)
m_line([110,122],[30,30],'Color','y','LineWidth',2)
m_line([110,122],[40,40],'Color','y','LineWidth',2)
m_line([110,110],[30,40],'Color','y','LineWidth',2)
m_line([122,122],[30,40],'Color','y','LineWidth',2)

% m_line([118.5,120.5],[32.5,32.5],'Color','y','LineWidth',2)
% m_line([118.5,120.5],[34,34],'Color','y','LineWidth',2)
% m_line([118.5,118.5],[32.5,34],'Color','y','LineWidth',2)
% m_line([120.5,120.5],[32.5,34],'Color','y','LineWidth',2)

%% 循环绘图
% 逐月长江中下游SIF分布
for i=5:5
    fg = figure();
    plotdata = sifcn20(:,:,i)-sifcnm(:,:,i);
    set(fg,'position',[100 100 400 250]);
    m_proj('mercator','lon',[105,125],'lat',[25,37]); 
    m_pcolor(Plg,Plt,plotdata+MASK); % ,'ShowText','on' 
    colormap(colorbarname)
    caxis([-0.5,0.5])
    datestart = datestr(datenum(2020,1,1)+(i-1)*16,'yyyy-mm-dd');
    dateend = datestr(datenum(2020,1,1)+i*16-1,'yyyy-mm-dd');
    title(datestr(i*29,'mmmm'),'fontsize',15)
%     text(-0.105,0.666,'(a)','FontSize',15);
    hold on
    m_grid('Linestyle','none','xtick',5,'ytick',5);
    beautify
    m_plot(Chinax,Chinay,'k-.','linewidth',1.5);
    hold off
end

%% 绘制colorbar
fg = figure;
set(fg,'position',[100 100 400 500]);
ax = axes('Position',[-0.01 -0.01 1 1]);
h = colorbar('Position',[0.52 0.1 0.015 0.8]);
set(ax,'XTick',[],'YTick',[]);
h.Label.String = '\DeltaPAR (W/m^2)';
h.FontSize=12;
colormap(colorbarname)
caxis([-40,40])
set(fg,'position',[100 100 800 400]);


%% 绘制全中国区域12个月空间分布示例代码

% 逐月全中国SIF分布
for i=1:8
    fg = figure();
    m_proj('mercator','lon',[lonmin,lonmax],'lat',[latmin,latmax]);
    m_pcolor(Plg,Plt,prcp20_0_5(:,:,i)-prcp020(:,:,i)+MASK);
    colormap(colorbarname)
    caxis([-80,80])
    h = colorbar;
    h.Label.String = 'mm'; %% SIF (mW/m^2/nm/sr)
    datestart = datestr(datenum(2020,1,1)+(i-1)*16,'yyyy-mm-dd');
    dateend = datestr(datenum(2020,1,1)+i*16-1,'yyyy-mm-dd');
    title(['\DeltaPRCP in ',datestr(i*29,'mmmm'),' of 2020'],'fontsize',15)
    hold on
    m_plot(Chinax,Chinay,'k');
%     m_plot(Riverlx,Riverly,'b');
%     m_plot(Riverpx,Riverpy,'b');
    m_grid('Linestyle','none','xtick',5,'ytick',5);
    xlabel('Longtitude','fontsize',12);
    ylabel('Latitude','fontsize',12);
    hold off

%     ax2 = axes('position',[0.7,0.2,0.1,0.15]);
%     m_proj('mercator','lon',[105,125],'lat',[0,25]);  % Northern China
%     m_pcolor(Plg,Plt,LAI20(:,:,i)-LAImean(:,:,i)+MASK); % ,'ShowText','on' 
%     hold on
%     m_plot(Chinax,Chinay,'k');
% %     m_plot(Riverlx,Riverly,'b');
% %     m_plot(Riverpx,Riverpy,'b');
%     m_grid('Linestyle','none','xtick',2,'fontsize',6,'ytick',2,'fontsize',6);
%     hold off
    saveas(fg, ['2020年',num2str(i),'月PRCP差异','.png']);
%     saveas(fg, [datestart,'至',dateend,'SIF距平','.fig']);
    close(fg)  
end

%% 逐月全中国SIF CF=0.2 - CF=0.8
for i=1:12
    fg = figure();
    m_proj('mercator','lon',[lonmin,lonmax],'lat',[latmin-0.5,latmax+0.5]);  % Northern China
    m_pcolor(Plg,Plt,sifm2019cf02(:,:,i)-sifm2019cf08(:,:,i)+China_MASK); % ,'ShowText','on' 
    colormap(MPL_BrBG)
    caxis([-0.4,0.4])
    h = colorbar;
    h.Label.String = 'SIF (W/m^2/um/sr)';
    datestart = datestr(datenum(2020,1,1)+(i-1)*16,'yyyy-mm-dd');
    dateend = datestr(datenum(2020,1,1)+i*16-1,'yyyy-mm-dd');
    title(['CF<=0.2 minus CF<=0.8 anomaly in ',datestr(i*29,'mmmm')],'fontsize',15)
    hold on
    m_coast;%画出海岸线
    m_plot(Chinax,Chinay,'k');
    % m_plot(Worldx,Worldy,'k');
    m_grid('Linestyle','none','xtick',5,'ytick',5);
    xlabel('Longtitude','fontsize',12);
    ylabel('Latitude','fontsize',12);
    hold off

    ax2 = axes('position',[0.7,0.2,0.1,0.15]);
    m_proj('mercator','lon',[105,125],'lat',[0,25]);  % Northern China
    m_pcolor(Plg,Plt,sifm2019cf02(:,:,i)-sifm2019cf08(:,:,i)+China_MASK); % ,'ShowText','on' 
    colormap(MPL_BrBG)
    caxis([-0.4,0.4])
    hold on
    m_coast;%画出海岸线
    m_plot(Chinax,Chinay,'k');
    m_grid('Linestyle','none','xtick',2,'fontsize',6,'ytick',2,'fontsize',6);
    hold off
    saveas(fg, ['2019年',num2str(i),'月SIF距平','.png']);
%     saveas(fg, [datestart,'至',dateend,'SIF距平','.fig']);
    close(fg)  
end

%% 逐月全中国SIF距平
for i=1:12
    fg = figure();
    m_proj('mercator','lon',[lonmin,lonmax],'lat',[latmin-0.5,latmax+0.5]);  % Northern China
    m_pcolor(Plg,Plt,sifm2020(:,:,i)-sifmon(:,:,i)+China_MASK); % ,'ShowText','on' 
    colormap(MPL_BrBG)
    caxis([-0.4,0.4])
    h = colorbar;
    h.Label.String = 'SIF (W/m^2/um/sr)';
    datestart = datestr(datenum(2020,1,1)+(i-1)*16,'yyyy-mm-dd');
    dateend = datestr(datenum(2020,1,1)+i*16-1,'yyyy-mm-dd');
    title(['Anomaly of SIF in ',datestr(i*29,'mmmm')],'fontsize',15)
    hold on
    m_coast;%画出海岸线
    m_plot(Chinax,Chinay,'k');
    % m_plot(Worldx,Worldy,'k');
    m_grid('Linestyle','none','xtick',5,'ytick',5);
    xlabel('Longtitude','fontsize',12);
    ylabel('Latitude','fontsize',12);
    hold off

    ax2 = axes('position',[0.7,0.2,0.1,0.15]);
    m_proj('mercator','lon',[105,125],'lat',[0,25]);  % Northern China
    m_pcolor(Plg,Plt,sifm2020(:,:,i)-sifmon(:,:,i)+China_MASK); % ,'ShowText','on' 
    colormap(MPL_BrBG)
    caxis([-0.4,0.4])
    hold on
    m_coast;%画出海岸线
    m_plot(Chinax,Chinay,'k');
    m_grid('Linestyle','none','xtick',2,'fontsize',6,'ytick',2,'fontsize',6);
    hold off
    saveas(fg, [num2str(i),'月SIF距平','.png']);
%     saveas(fg, [datestart,'至',dateend,'SIF距平','.fig']);
    close(fg)  
end

%% 逐8天SIF距平
for i=16:39
    fg = figure();
    m_proj('mercator','lon',[lonmin,lonmax],'lat',[latmin,latmax]);  % Northern China
    m_pcolor(Plg,Plt,precip8day2020(:,:,i)'-precip8dm(:,:,i)'+MASK); % ,'ShowText','on'
    colormap(colorbarname)
    caxis([0,80])
    h = colorbar;
    h.Label.String = 'PRCP (mm)';%'\DeltaSIF(mW/m^2/nm/sr)';
    datestart = datestr(datenum(2020,1,1)+i*8-7,'yyyy-mm-dd');
    dateend = datestr(datenum(2020,1,1)+i*8,'yyyy-mm-dd');
    title({'\fontsize{15pt}\bf{Distribution of PRCP in }',['\fontsize{12pt}\rm{',datestart,' to ',dateend,'}']})
    hold on
    m_coast;%画出海岸线
    m_plot(Chinax,Chinay,'k');
    m_grid('Linestyle','none','xtick',5,'ytick',5);
    saveas(fg, [datestart,'至',dateend,' PRCP分布','.png']);
    %     saveas(fg, [datestart,'至',dateend,'SIF距平','.fig']);
    close(fg)
end

%% 半月全中国SIF距平
for i=1:12
    fg = figure();
    m_proj('mercator','lon',[lonmin,lonmax],'lat',[latmin-0.5,latmax+0.5]);  % Northern China
    m_pcolor(Plg,Plt,SIFhalf(:,:,i)-SIFhalfm(:,:,i)+China_MASK); % ,'ShowText','on' 
    colormap(MPL_BrBG)
    caxis([-0.4,0.4])
    h = colorbar;
    h.Label.String = 'SIF (W/m^2/um/sr)';
    if mod(i,2)==1
        monthhalf = 'The first half of ';
    else
        monthhalf = 'The second half of ';
    end
    title([monthhalf,datestr(i*16+106,'mmmm'),' Anomaly'],'fontsize',15)
    hold on
    m_coast;%画出海岸线
    m_plot(Chinax,Chinay,'k');
    % m_plot(Worldx,Worldy,'k');
    m_grid('Linestyle','none','xtick',5,'ytick',5);
    xlabel('Longtitude','fontsize',12);
    ylabel('Latitude','fontsize',12);
    hold off

    ax2 = axes('position',[0.7,0.2,0.1,0.15]);
    m_proj('mercator','lon',[105,125],'lat',[0,25]);  % Northern China
    m_pcolor(Plg,Plt,SIFhalf(:,:,i)-SIFhalfm(:,:,i)+China_MASK); % ,'ShowText','on' 
    colormap(MPL_BrBG)
    caxis([-0.4,0.4])
    hold on
    m_coast;%画出海岸线
    m_plot(Chinax,Chinay,'k');
    m_grid('Linestyle','none','xtick',2,'fontsize',6,'ytick',2,'fontsize',6);
    hold off
    saveas(fg, [num2str(i),monthhalf,datestr(i*16+106,'mmmm'),' SIF距平','.png']);
%     saveas(fg, [datestart,'至',dateend,'SIF距平','.fig']);
    close(fg)  
end
