
k=0;
tem_path=textread('C:\Users\Chen Yong\Desktop\Research_and_cultivation_project\Freddy\Freddy\olr_data.txt','%s');
for i=1:length(tem_path)

    ncid=char(tem_path(i));
    lat = ncread(ncid,'lat'); 
    lon = ncread(ncid,'lon');
    time = ncread(ncid,'time');
    dim = size(time);
    olr(:,:,k+1:k+dim(1)) = ncread(ncid,'olr');
    k=k+dim(1);
 
end