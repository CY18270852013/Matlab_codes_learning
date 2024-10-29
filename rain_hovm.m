clear;
olr_read;
dimlen=size(olr);

olr_annual=zeros(dimlen(1),dimlen(2),365);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,1:59);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,60+1:366);
olr_annual=olr_annual+olr(:,:,366+1:731);
olr_annual=olr_annual+olr(:,:,731+1:1096);
olr_annual=olr_annual+olr(:,:,1096+1:1461);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,1461+1:1520);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,1521+1:1827);
olr_annual=olr_annual+olr(:,:,1827+1:2192);
olr_annual=olr_annual+olr(:,:,2192+1:2557);
olr_annual=olr_annual+olr(:,:,2557+1:2922);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,2922+1:2981);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,2982+1:3288);
olr_annual=olr_annual+olr(:,:,3288+1:3653);
olr_annual=olr_annual+olr(:,:,3653+1:4018);
olr_annual=olr_annual+olr(:,:,4018+1:4383);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,4383+1:4442);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,4443+1:4749);
olr_annual=olr_annual+olr(:,:,4749+1:5114);
olr_annual=olr_annual+olr(:,:,5114+1:5479);
olr_annual=olr_annual+olr(:,:,5479+1:5844);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,5844+1:5903);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,5904+1:6210);
olr_annual=olr_annual+olr(:,:,6210+1:6575);
olr_annual=olr_annual+olr(:,:,6575+1:6940);
olr_annual=olr_annual+olr(:,:,6940+1:7305);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,7305+1:7364);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,7365+1:7671);
olr_annual=olr_annual+olr(:,:,7671+1:8036);
olr_annual=olr_annual+olr(:,:,8036+1:8401);
olr_annual=olr_annual+olr(:,:,8401+1:8766);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,8766+1:8825);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,8826+1:9132);
olr_annual=olr_annual+olr(:,:,9132+1:9497);
olr_annual=olr_annual+olr(:,:,9497+1:9862);
olr_annual=olr_annual+olr(:,:,9862+1:10227);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,10227+1:10286);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,10287+1:10593);
olr_annual=olr_annual+olr(:,:,10593+1:10958);
olr_annual=olr_annual+olr(:,:,10958+1:11323);
olr_annual=olr_annual+olr(:,:,11323+1:11688);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,11688+1:11747);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,11748+1:12054);
olr_annual=olr_annual+olr(:,:,12054+1:12419);
olr_annual=olr_annual+olr(:,:,12419+1:12784);
olr_annual=olr_annual+olr(:,:,12784+1:13149);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,13149+1:13208);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,13209+1:13515);
olr_annual=olr_annual+olr(:,:,13515+1:13880);
olr_annual=olr_annual+olr(:,:,13880+1:14245);
olr_annual=olr_annual+olr(:,:,14245+1:14610);
olr_annual(:,:,1:59)=olr_annual(:,:,1:59)+olr(:,:,14610+1:14669);
olr_annual(:,:,59+1:365)=olr_annual(:,:,59+1:365)+olr(:,:,14670+1:14976);
olr_annual=olr_annual./41.0;


for i=1:360
    for j=1:180
        data=squeeze(olr_annual(i,j,:));
        n=365;
        ts=fft(data);
        ts_1=ts;
        ts_1(5:n)=0;
        data_1=ifft(ts_1);
        olr_filt(i,j,:)=real(data_1);        
    end
end


olr_anom0(:,:,1:59)=olr(:,:,1:59)-olr_filt(:,:,1:59);
olr_anom0(:,:,59+1:60)=olr(:,:,59+1:60)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,60+1:366)=olr(:,:,60+1:366)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,366+1:731)=olr(:,:,366+1:731)-olr_filt;
olr_anom0(:,:,731+1:1096)=olr(:,:,731+1:1096)-olr_filt;
olr_anom0(:,:,1096+1:1461)=olr(:,:,1096+1:1461)-olr_filt;
olr_anom0(:,:,1461+1:1520)=olr(:,:,1461+1:1520)-olr_filt(:,:,1:59);
olr_anom0(:,:,1520+1:1521)=olr(:,:,1520+1:1521)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,1521+1:1827)=olr(:,:,1521+1:1827)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,1827+1:2192)=olr(:,:,1827+1:2192)-olr_filt;
olr_anom0(:,:,2192+1:2557)=olr(:,:,2192+1:2557)-olr_filt;
olr_anom0(:,:,2557+1:2922)=olr(:,:,2557+1:2922)-olr_filt;
olr_anom0(:,:,2922+1:2981)=olr(:,:,2922+1:2981)-olr_filt(:,:,1:59);
olr_anom0(:,:,2981+1:2982)=olr(:,:,2981+1:2982)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,2982+1:3288)=olr(:,:,2982+1:3288)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,3288+1:3653)=olr(:,:,3288+1:3653)-olr_filt;
olr_anom0(:,:,3653+1:4018)=olr(:,:,3653+1:4018)-olr_filt;
olr_anom0(:,:,4018+1:4383)=olr(:,:,4018+1:4383)-olr_filt;
olr_anom0(:,:,4383+1:4442)=olr(:,:,4383+1:4442)-olr_filt(:,:,1:59);
olr_anom0(:,:,4442+1:4443)=olr(:,:,4442+1:4443)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,4443+1:4749)=olr(:,:,4443+1:4749)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,4749+1:5114)=olr(:,:,4749+1:5114)-olr_filt;
olr_anom0(:,:,5114+1:5479)=olr(:,:,5114+1:5479)-olr_filt;
olr_anom0(:,:,5479+1:5844)=olr(:,:,5479+1:5844)-olr_filt;
olr_anom0(:,:,5844+1:5903)=olr(:,:,5844+1:5903)-olr_filt(:,:,1:59);
olr_anom0(:,:,5903+1:5904)=olr(:,:,5903+1:5904)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,5904+1:6210)=olr(:,:,5904+1:6210)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,6210+1:6575)=olr(:,:,6210+1:6575)-olr_filt;
olr_anom0(:,:,6575+1:6940)=olr(:,:,6575+1:6940)-olr_filt;
olr_anom0(:,:,6940+1:7305)=olr(:,:,6940+1:7305)-olr_filt;
olr_anom0(:,:,7305+1:7364)=olr(:,:,7305+1:7364)-olr_filt(:,:,1:59);
olr_anom0(:,:,7364+1:7365)=olr(:,:,7364+1:7365)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,7365+1:7671)=olr(:,:,7365+1:7671)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,7671+1:8036)=olr(:,:,7671+1:8036)-olr_filt;
olr_anom0(:,:,8036+1:8401)=olr(:,:,8036+1:8401)-olr_filt;
olr_anom0(:,:,8401+1:8766)=olr(:,:,8401+1:8766)-olr_filt;
olr_anom0(:,:,8766+1:8825)=olr(:,:,8766+1:8825)-olr_filt(:,:,1:59);
olr_anom0(:,:,8825+1:8826)=olr(:,:,8825+1:8826)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,8826+1:9132)=olr(:,:,8826+1:9132)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,9132+1:9497)=olr(:,:,9132+1:9497)-olr_filt;
olr_anom0(:,:,9497+1:9862)=olr(:,:,9497+1:9862)-olr_filt;
olr_anom0(:,:,9862+1:10227)=olr(:,:,9862+1:10227)-olr_filt;
olr_anom0(:,:,10227+1:10286)=olr(:,:,10227+1:10286)-olr_filt(:,:,1:59);
olr_anom0(:,:,10286+1:10287)=olr(:,:,10286+1:10287)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,10287+1:10593)=olr(:,:,10287+1:10593)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,10593+1:10958)=olr(:,:,10593+1:10958)-olr_filt;
olr_anom0(:,:,10958+1:11323)=olr(:,:,10958+1:11323)-olr_filt;
olr_anom0(:,:,11323+1:11688)=olr(:,:,11323+1:11688)-olr_filt;
olr_anom0(:,:,11688+1:11747)=olr(:,:,11688+1:11747)-olr_filt(:,:,1:59);
olr_anom0(:,:,11747+1:11748)=olr(:,:,11747+1:11748)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,11748+1:12054)=olr(:,:,11748+1:12054)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,12054+1:12419)=olr(:,:,12054+1:12419)-olr_filt;
olr_anom0(:,:,12419+1:12784)=olr(:,:,12419+1:12784)-olr_filt;
olr_anom0(:,:,12784+1:13149)=olr(:,:,12784+1:13149)-olr_filt;
olr_anom0(:,:,13149+1:13208)=olr(:,:,13149+1:13208)-olr_filt(:,:,1:59);
olr_anom0(:,:,13208+1:13209)=olr(:,:,13208+1:13209)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,13209+1:13515)=olr(:,:,13209+1:13515)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,13515+1:13880)=olr(:,:,13515+1:13880)-olr_filt;
olr_anom0(:,:,13880+1:14245)=olr(:,:,13880+1:14245)-olr_filt;
olr_anom0(:,:,14245+1:14610)=olr(:,:,14245+1:14610)-olr_filt;
olr_anom0(:,:,14610+1:14669)=olr(:,:,14610+1:14669)-olr_filt(:,:,1:59);
olr_anom0(:,:,14669+1:14670)=olr(:,:,14669+1:14670)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,14670+1:14976)=olr(:,:,14670+1:14976)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,14976+1:15341)=olr(:,:,14976+1:15341)-olr_filt;
olr_anom0(:,:,15341+1:15706)=olr(:,:,15341+1:15706)-olr_filt;
olr_anom0(:,:,15706+1:16071)=olr(:,:,15706+1:16071)-olr_filt;


fs=1.0;
w_u=1.0/20.0;
w_d=1.0/100.0;
[b,a]=butter(4,[w_d/(fs*0.5) w_u/(fs*0.5)]);
for i=1:360
    for j=1:180        
        olr_f(i,j,:)=filter(b,a,olr_anom0(i,j,:));        
    end
end
olr_2023=olr_f(:,:,15706+1:16071);
save('olr_2023.mat','olr_2023');


olr_eqt=squeeze(mean(olr_2023(:,86:95,:),2));
h=figure(1);
contourf(olr_eqt',[0.9 0.6 0.6],'EdgeColor','none');
hold on;
plot(x_plot,qq_p(2:7),'MarkerFaceColor',[0.95 0 0],'MarkerSize',10,'Marker','^',...
    'LineWidth',1.8,'Color',[0.95 0 0]);
set(gca,'XTickLabel',{'-0.15','-0.10','-0.05','0','0.05','0.10','0.15','0.20'},...
    'XTick',[-0.15 -0.10 -0.05 0 0.05 0.10 0.15 0.20],...
    'Layer','top');
box on;
xlim([-0.15 0.25]);
ylim([5.5 9.0]);
xlabel('Moisture convergence','FontSize',12);
ylabel('Shallow convection','FontSize',12);
print(gcf,'-dpdf','qq_qh_a.pdf');
close(h);