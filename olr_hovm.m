clear;
olr_read;
dimlen=size(olr);
olr_annual=zeros(dimlen(1),dimlen(2),365);
num_olr=zeros(dimlen(1),dimlen(2),365);


%----------计算2001-2020年annual cycle气候态，剔除缺省值nan--------------
for i=1:dimlen(1)
for j=1:dimlen(2)
        for t=7671+1:8036
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-7671)=olr_annual(i,j,t-7671)+olr(i,j,t);
                num_olr(i,j,t-7671)=num_olr(i,j,t-7671)+1;
            end
        end
        for t=8036+1:8401
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-8036)=olr_annual(i,j,t-8036)+olr(i,j,t);
                num_olr(i,j,t-8036)=num_olr(i,j,t-8036)+1;
            end
        end
        for t=8401+1:8766
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-8401)=olr_annual(i,j,t-8401)+olr(i,j,t);
                num_olr(i,j,t-8401)=num_olr(i,j,t-8401)+1;
            end
        end
        for t=8766+1:8825
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-8766)=olr_annual(i,j,t-8766)+olr(i,j,t);
                num_olr(i,j,t-8766)=num_olr(i,j,t-8766)+1;
            end
        end
        for t=8826+1:9132
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-8767)=olr_annual(i,j,t-8767)+olr(i,j,t);
                num_olr(i,j,t-8767)=num_olr(i,j,t-8767)+1;
            end
        end
        for t=9132+1:9497
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-9132)=olr_annual(i,j,t-9132)+olr(i,j,t);
                num_olr(i,j,t-9132)=num_olr(i,j,t-9132)+1;
            end
        end
        for t=9497+1:9862
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-9497)=olr_annual(i,j,t-9497)+olr(i,j,t);
                num_olr(i,j,t-9497)=num_olr(i,j,t-9497)+1;
            end
        end
        for t=9862+1:10227
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-9862)=olr_annual(i,j,t-9862)+olr(i,j,t);
                num_olr(i,j,t-9862)=num_olr(i,j,t-9862)+1;
            end
        end
        for t=10227+1:10286
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-10227)=olr_annual(i,j,t-10227)+olr(i,j,t);
                num_olr(i,j,t-10227)=num_olr(i,j,t-10227)+1;
            end
        end
        for t=10287+1:10593
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-10228)=olr_annual(i,j,t-10228)+olr(i,j,t);
                num_olr(i,j,t-10228)=num_olr(i,j,t-10228)+1;
            end
        end
        for t=10593+1:10958
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-10593)=olr_annual(i,j,t-10593)+olr(i,j,t);
                num_olr(i,j,t-10593)=num_olr(i,j,t-10593)+1;
            end
        end
        for t=10958+1:11323
             if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-10958)=olr_annual(i,j,t-10958)+olr(i,j,t);
                num_olr(i,j,t-10958)=num_olr(i,j,t-10958)+1;
            end
        end
        for t=11323+1:11688
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-11323)=olr_annual(i,j,t-11323)+olr(i,j,t);
                num_olr(i,j,t-11323)=num_olr(i,j,t-11323)+1;
            end
        end
        for t=11688+1:11747
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-11688)=olr_annual(i,j,t-11688)+olr(i,j,t);
                num_olr(i,j,t-11688)=num_olr(i,j,t-11688)+1;
            end
        end
        for t=11748+1:12054
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-11689)=olr_annual(i,j,t-11689)+olr(i,j,t);
                num_olr(i,j,t-11689)=num_olr(i,j,t-11689)+1;
            end
        end
        for t=12054+1:12419
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-12054)=olr_annual(i,j,t-12054)+olr(i,j,t);
                num_olr(i,j,t-12054)=num_olr(i,j,t-12054)+1;
            end
        end
        for t=12419+1:12784
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-12419)=olr_annual(i,j,t-12419)+olr(i,j,t);
                num_olr(i,j,t-12419)=num_olr(i,j,t-12419)+1;
            end
        end
        for t=12784+1:13149
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-12784)=olr_annual(i,j,t-12784)+olr(i,j,t);
                num_olr(i,j,t-12784)=num_olr(i,j,t-12784)+1;
            end
        end
        for t=13149+1:13208
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-13149)=olr_annual(i,j,t-13149)+olr(i,j,t);
                num_olr(i,j,t-13149)=num_olr(i,j,t-13149)+1;
            end
        end
        for t=13209+1:13515
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-13150)=olr_annual(i,j,t-13150)+olr(i,j,t);
                num_olr(i,j,t-13150)=num_olr(i,j,t-13150)+1;
            end
        end
        for t=13515+1:13880
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-13515)=olr_annual(i,j,t-13515)+olr(i,j,t);
                num_olr(i,j,t-13515)=num_olr(i,j,t-13515)+1;
            end
        end
        for t=13880+1:14245
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-13880)=olr_annual(i,j,t-13880)+olr(i,j,t);
                num_olr(i,j,t-13880)=num_olr(i,j,t-13880)+1;
            end
        end
        for t=14245+1:14610
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-14245)=olr_annual(i,j,t-14245)+olr(i,j,t);
                num_olr(i,j,t-14245)=num_olr(i,j,t-14245)+1;
            end
        end
        for t=14610+1:14669
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-14610)=olr_annual(i,j,t-14610)+olr(i,j,t);
                num_olr(i,j,t-14610)=num_olr(i,j,t-14610)+1;
            end
        end
        for t=14670+1:14976
            if (~isnan(olr(i,j,t)))
                olr_annual(i,j,t-14611)=olr_annual(i,j,t-14611)+olr(i,j,t);
                num_olr(i,j,t-14611)=num_olr(i,j,t-14611)+1;
            end
        end
end
end
olr_annual=olr_annual./num_olr;
for i=1:360
for j=1:180
for t=1:365
    if (isnan(olr_annual(i,j,t)))
        olr_annual(i,j,t)=0.25*(olr_annual(i-1,j,t)+olr_annual(i+1,j,t)+olr_annual(i,j-1,t)+olr_annual(i,j+1,t));
    end
end
end
end



%--------------将缺省值nan替换为annual cycle值--------------
olr_r=olr;
for i=1:360
for j=1:180
    for t=1:59
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t);
        end
    end
    if (isnan(olr(i,j,60)))
        olr_r(i,j,60)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=60+1:366
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-1);
        end
    end
    for t=366+1:731
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-366);
        end
    end
    for t=731+1:1096       
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-731);
        end
    end
    for t=1096+1:1461
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-1096);
        end
    end
    for t=1461+1:1520 
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-1461);
        end
    end
    if (isnan(olr(i,j,1521)))
        olr_r(i,j,1521)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=1521+1:1827
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-1462);
        end
    end
    for t=1827+1:2192
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-1827);
        end
    end
    for t=2192+1:2557
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-2192);
        end
    end
    for t=2557+1:2922
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-2557);
        end
    end
    for t=2922+1:2981
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-2922);
        end
    end
    if (isnan(olr(i,j,2982)))
        olr_r(i,j,2982)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end        
    for t=2982+1:3288
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-2923);
        end
    end
    for t=3288+1:3653
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-3288);
        end
    end
    for t=3653+1:4018
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-3653);
        end
    end
    for t=4018+1:4383
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-4018);
        end
    end
    for t=4383+1:4442
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-4383);
        end
    end
    if (isnan(olr(i,j,4443)))
        olr_r(i,j,4443)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=4443+1:4749
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-4384);
        end
    end
    for t=4749+1:5114
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-4749);
        end
    end
    for t=5114+1:5479
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-5114);
        end
    end
    for t=5479+1:5844
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-5479);
        end
    end
    for t=5844+1:5903
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-5844);
        end
    end
    if (isnan(olr(i,j,5904)))
        olr_r(i,j,5904)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=5904+1:6210
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-5845);
        end
    end
    for t=6210+1:6575
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-6210);
        end
    end
    for t=6575+1:6940
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-6575);
        end
    end
    for t=6940+1:7305
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-6940);
        end
    end
    for t=7305+1:7364
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-7305);
        end
    end
    if (isnan(olr(i,j,7365)))
        olr_r(i,j,7365)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=7365+1:7671
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-7306);
        end
    end
    for t=7671+1:8036
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-7671);
        end
    end
    for t=8036+1:8401
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-8036);
        end
    end
    for t=8401+1:8766
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-8401);
        end
    end
    for t=8766+1:8825
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-8766);
        end
    end
    if (isnan(olr(i,j,8826)))
        olr_r(i,j,8826)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=8826+1:9132
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-8767);
        end
    end
    for t=9132+1:9497
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-9132);
        end
    end
    for t=9497+1:9862
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-9497);
        end
    end
    for t=9862+1:10227
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-9862);
        end
    end
    for t=10227+1:10286
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-10227);
        end
    end
    if (isnan(olr(i,j,10287)))
        olr_r(i,j,10287)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=10287+1:10593
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-10228);
        end
    end
    for t=10593+1:10958
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-10593);
        end
    end
    for t=10958+1:11323
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-10958);
        end
    end
    for t=11323+1:11688
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-11323);
        end
    end
    for t=11688+1:11747
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-11688);
        end
    end
    if (isnan(olr(i,j,11748)))
        olr_r(i,j,11748)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=11748+1:12054
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-11689);
        end
    end
    for t=12054+1:12419
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-12054);
        end
    end
    for t=12419+1:12784
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-12419);
        end
    end
    for t=12784+1:13149
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-12784);
        end
    end
    for t=13149+1:13208
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-13149);
        end
    end
    if (isnan(olr(i,j,13209)))
        olr_r(i,j,13209)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end        
    for t=13209+1:13515
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-13150);
        end
    end
    for t=13515+1:13880
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-13515);
        end
    end
    for t=13880+1:14245
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-13880);
        end
    end
    for t=14245+1:14610
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-14245);
        end
    end
    for t=14610+1:14669
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-14610);
        end
    end
    if (isnan(olr(i,j,14670)))
        olr_r(i,j,14670)=0.5*(olr_annual(i,j,59)+olr_annual(i,j,60));
    end
    for t=14670+1:14976
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-14611);
        end
    end
    for t=14976+1:15341
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-14976);
        end
    end
    for t=15341+1:15706
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-15341);
        end
    end
    for t=15706+1:16071
        if (isnan(olr(i,j,t)))
            olr_r(i,j,t)=olr_annual(i,j,t-15706);
        end
    end    
end
end
olr_filt=olr_annual;


%----------------计算相对于气候态annual cycle的异常值--------------
olr_anom0(:,:,1:59)=olr_r(:,:,1:59)-olr_filt(:,:,1:59);
olr_anom0(:,:,59+1:60)=olr_r(:,:,59+1:60)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,60+1:366)=olr_r(:,:,60+1:366)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,366+1:731)=olr_r(:,:,366+1:731)-olr_filt;
olr_anom0(:,:,731+1:1096)=olr_r(:,:,731+1:1096)-olr_filt;
olr_anom0(:,:,1096+1:1461)=olr_r(:,:,1096+1:1461)-olr_filt;
olr_anom0(:,:,1461+1:1520)=olr_r(:,:,1461+1:1520)-olr_filt(:,:,1:59);
olr_anom0(:,:,1520+1:1521)=olr_r(:,:,1520+1:1521)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,1521+1:1827)=olr_r(:,:,1521+1:1827)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,1827+1:2192)=olr_r(:,:,1827+1:2192)-olr_filt;
olr_anom0(:,:,2192+1:2557)=olr_r(:,:,2192+1:2557)-olr_filt;
olr_anom0(:,:,2557+1:2922)=olr_r(:,:,2557+1:2922)-olr_filt;
olr_anom0(:,:,2922+1:2981)=olr_r(:,:,2922+1:2981)-olr_filt(:,:,1:59);
olr_anom0(:,:,2981+1:2982)=olr_r(:,:,2981+1:2982)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,2982+1:3288)=olr_r(:,:,2982+1:3288)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,3288+1:3653)=olr_r(:,:,3288+1:3653)-olr_filt;
olr_anom0(:,:,3653+1:4018)=olr_r(:,:,3653+1:4018)-olr_filt;
olr_anom0(:,:,4018+1:4383)=olr_r(:,:,4018+1:4383)-olr_filt;
olr_anom0(:,:,4383+1:4442)=olr_r(:,:,4383+1:4442)-olr_filt(:,:,1:59);
olr_anom0(:,:,4442+1:4443)=olr_r(:,:,4442+1:4443)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,4443+1:4749)=olr_r(:,:,4443+1:4749)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,4749+1:5114)=olr_r(:,:,4749+1:5114)-olr_filt;
olr_anom0(:,:,5114+1:5479)=olr_r(:,:,5114+1:5479)-olr_filt;
olr_anom0(:,:,5479+1:5844)=olr_r(:,:,5479+1:5844)-olr_filt;
olr_anom0(:,:,5844+1:5903)=olr_r(:,:,5844+1:5903)-olr_filt(:,:,1:59);
olr_anom0(:,:,5903+1:5904)=olr_r(:,:,5903+1:5904)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,5904+1:6210)=olr_r(:,:,5904+1:6210)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,6210+1:6575)=olr_r(:,:,6210+1:6575)-olr_filt;
olr_anom0(:,:,6575+1:6940)=olr_r(:,:,6575+1:6940)-olr_filt;
olr_anom0(:,:,6940+1:7305)=olr_r(:,:,6940+1:7305)-olr_filt;
olr_anom0(:,:,7305+1:7364)=olr_r(:,:,7305+1:7364)-olr_filt(:,:,1:59);
olr_anom0(:,:,7364+1:7365)=olr_r(:,:,7364+1:7365)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,7365+1:7671)=olr_r(:,:,7365+1:7671)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,7671+1:8036)=olr_r(:,:,7671+1:8036)-olr_filt;
olr_anom0(:,:,8036+1:8401)=olr_r(:,:,8036+1:8401)-olr_filt;
olr_anom0(:,:,8401+1:8766)=olr_r(:,:,8401+1:8766)-olr_filt;
olr_anom0(:,:,8766+1:8825)=olr_r(:,:,8766+1:8825)-olr_filt(:,:,1:59);
olr_anom0(:,:,8825+1:8826)=olr_r(:,:,8825+1:8826)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,8826+1:9132)=olr_r(:,:,8826+1:9132)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,9132+1:9497)=olr_r(:,:,9132+1:9497)-olr_filt;
olr_anom0(:,:,9497+1:9862)=olr_r(:,:,9497+1:9862)-olr_filt;
olr_anom0(:,:,9862+1:10227)=olr_r(:,:,9862+1:10227)-olr_filt;
olr_anom0(:,:,10227+1:10286)=olr_r(:,:,10227+1:10286)-olr_filt(:,:,1:59);
olr_anom0(:,:,10286+1:10287)=olr_r(:,:,10286+1:10287)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,10287+1:10593)=olr_r(:,:,10287+1:10593)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,10593+1:10958)=olr_r(:,:,10593+1:10958)-olr_filt;
olr_anom0(:,:,10958+1:11323)=olr_r(:,:,10958+1:11323)-olr_filt;
olr_anom0(:,:,11323+1:11688)=olr_r(:,:,11323+1:11688)-olr_filt;
olr_anom0(:,:,11688+1:11747)=olr_r(:,:,11688+1:11747)-olr_filt(:,:,1:59);
olr_anom0(:,:,11747+1:11748)=olr_r(:,:,11747+1:11748)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,11748+1:12054)=olr_r(:,:,11748+1:12054)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,12054+1:12419)=olr_r(:,:,12054+1:12419)-olr_filt;
olr_anom0(:,:,12419+1:12784)=olr_r(:,:,12419+1:12784)-olr_filt;
olr_anom0(:,:,12784+1:13149)=olr_r(:,:,12784+1:13149)-olr_filt;
olr_anom0(:,:,13149+1:13208)=olr_r(:,:,13149+1:13208)-olr_filt(:,:,1:59);
olr_anom0(:,:,13208+1:13209)=olr_r(:,:,13208+1:13209)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,13209+1:13515)=olr_r(:,:,13209+1:13515)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,13515+1:13880)=olr_r(:,:,13515+1:13880)-olr_filt;
olr_anom0(:,:,13880+1:14245)=olr_r(:,:,13880+1:14245)-olr_filt;
olr_anom0(:,:,14245+1:14610)=olr_r(:,:,14245+1:14610)-olr_filt;
olr_anom0(:,:,14610+1:14669)=olr_r(:,:,14610+1:14669)-olr_filt(:,:,1:59);
olr_anom0(:,:,14669+1:14670)=olr_r(:,:,14669+1:14670)-0.5*(olr_filt(:,:,58+1:59)+olr_filt(:,:,59+1:60));
olr_anom0(:,:,14670+1:14976)=olr_r(:,:,14670+1:14976)-olr_filt(:,:,59+1:365);
olr_anom0(:,:,14976+1:15341)=olr_r(:,:,14976+1:15341)-olr_filt;
olr_anom0(:,:,15341+1:15706)=olr_r(:,:,15341+1:15706)-olr_filt;
olr_anom0(:,:,15706+1:16071)=olr_r(:,:,15706+1:16071)-olr_filt;



%------------------提取季节内振荡信号，20-100天带通滤波-----------------
Fs = 1;
Fp1 = 1.0/100;
Fp2 = 1.0/20;
Nf = 10;
d = designfilt('bandpassiir','FilterOrder',Nf,'HalfPowerFrequency1',Fp1,'HalfPowerFrequency2',Fp2,'SampleRate',Fs);
for i=1:360
for j=1:180
    olr_f(i,j,:) = filtfilt(d,double(squeeze(olr_anom0(i,j,:))));
end
end


%----------------提取2023年数据----------------
for i=1:360
for j=1:180
    for t=15706+1:16071
        if (isnan(olr(i,j,t)))
            olr_f(i,j,t)=nan;
        end
    end    
end
end
olr_2023=olr_f(:,:,15706+1:16071);
save('olr_2023.mat','olr_2023');
olr_eqt=squeeze(mean(olr_2023(:,86:95,:),2));


%---------------画Hovmuller图--------------
h=figure(1);
load clr_rb254;
contourf(olr_eqt(1:240,1:121)',[-88:8:88],'EdgeColor','none');
colormap(clr_rb254);
caxis([-88 87.9999999]);
colorbar;
hold on;
set(gca,'XTickLabel',{'0','60E','120E','180','120W'},...
    'XTick',[0.5 60.5 120.5 180.5 240.5],...
    'YTickLabel',{'JAN01','FEB01','MAR01','APR01','MAY01'},...
    'YTick',[1 32 60 91 121],...
    'Layer','top');
box on;
xlim([0.5 240.5]);
ylim([1 121]);
xlabel('Longitude','FontSize',12);
ylabel('Date','FontSize',12);
exportgraphics(gcf,'olr_hov.pdf','ContentType','vector');
close(h);