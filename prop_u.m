clear;
ht=[0.2 0.4 0.6 0.8 1.0 1.25 1.5 1.75 2.0 2.25 2.5 2.75 3.0 3.25 3.5 4.0 4.5...
    5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0 10.5 11.0 11.5 12.0 12.5 13.0 13.5 14.0];
ht=ht*1000.0;               


load \\mycloudpr4100\data3\cloud_resolving\propagation\new\u_1km.mat;
u_ex(:,1:100)=u_1km(:,101:-1:2);
u_ex(:,100+1:100+1248)=u_1km;
u_ex(:,101+1248:200+1248)=u_1km(:,1248-1:-1:1248-100);
Fs = 2;
Fp1 = 1.0/38;
Fp2 = 1.0/20;
Nf = 10;
d = designfilt('bandpassiir','FilterOrder',Nf,'HalfPowerFrequency1',Fp1,'HalfPowerFrequency2',Fp2,'SampleRate',Fs);
for i=1:2199
    u_t_filt(i,:) = filtfilt(d,double(squeeze(u_ex(i,:))));
end


u_ave=u_t_filt(:,100+1:100+1248);
n=1;
for i=1:3:2197
    refl_plot(n,:)=mean(u_ave(i:i+2,:),1);
    n=n+1;
end

refl_p=refl_plot;
for i=3:731
    refl_p(i,:)=(1.0/16)*refl_plot(i-2,:)+(4.0/16)*refl_plot(i-1,:)+(6.0/16)*refl_plot(i,:)...
             +(4.0/16)*refl_plot(i+1,:)+(1.0/16)*refl_plot(i+2,:);
end




x=find(refl_p<-2.7);
refl_p(x)=-2.7;
figure(1);
load clr.mat;
contourf(refl_p',[-2.7:0.45:2.7],'edgecolor','none');
colormap(clr);
caxis([-2.7 2.699999999]);
colorbar;
hold on;
set(gca,'XTickLabel',{'55 E','65 E','75 E','85 E','95 E','105 E'},...
    'XTick',[46.415  137.995  229.58  321.17  412.76  504.35],...
    'YTickLabel',{'20OCT','22OCT','24OCT','26OCT','28OCT','30OCT','01NOV','03NOV','05NOV'},...
    'YTick',[433 529 625 721 817 913 1009 1105 1201],...
    'Layer','top');
set(gca,'PlotBoxAspectRatio',[1 1.2 1]);
xlim([61 674]);
ylim([433 1201]);
xlabel('Longitude','FontSize',12);
ylabel('Date','FontSize',12);
exportgraphics(gcf,'prop_u_1km_band_filt1.pdf','ContentType','vector');



% figure(1);
% load clr.mat;
% contourf(refl_p',[-10.0:0.1:10.0],'edgecolor','none');
% colormap(clr);
% caxis([-10. 9.99999999]);
% colorbar;
% hold on;
% set(gca,'XTickLabel',{'55 E','65 E','75 E','85 E','95 E','105 E'},...
%     'XTick',[46.415  137.995  229.58  321.17  412.76  504.35],...
%     'YTickLabel',{'20OCT','22OCT','24OCT','26OCT','28OCT','30OCT','01NOV','03NOV','05NOV'},...
%     'YTick',[433 529 625 721 817 913 1009 1105 1201],...
%     'Layer','top');
% set(gca,'PlotBoxAspectRatio',[1 1.2 1]);
% xlim([61 674]);
% ylim([433 1201]);
% xlabel('Longitude','FontSize',12);
% ylabel('Date','FontSize',12);
% exportgraphics(gcf,'prop_u_band_filt2.pdf','ContentType','vector');





% load \\mycloudpr4100\data3\cloud_resolving\propagation\new\u_3D.mat;
% 
% 
% u_ave=u_3D(:,:,865);
% x=find(u_ave<-24);
% u_ave(x)=-24;
% figure(1);
% load clr.mat;
% contourf(u_ave',[-24:3:24],'edgecolor','none');
% colormap(clr);
% caxis([-24 23.99999999]);
% colorbar;
% hold on;
% set(gca,'XTickLabel',{'50 E','60 E','70 E','80 E','90 E','100 E','110 E'},...
%     'XTick',[1  366  733  1100   1468   1835    2199],...
%     'YTickLabel',{'2','4','8','12'},...
%     'YTick',[9 16 24 32],...
%     'Layer','top');
% set(gca,'PlotBoxAspectRatio',[1.5 1 1]);
% xlim([1 2199]);
% ylim([1 36]);
% xlabel('Longitude','FontSize',12);
% ylabel('Height','FontSize',12);
% exportgraphics(gcf,'u_prf_29.pdf','ContentType','vector');
