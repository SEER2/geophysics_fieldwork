clear;
load;

% ml表示测线数据，AB为测深AB间隔数据
% 根据要计算的内容更换matlab.mat中的数据
% % % % % % % % % % % % % % % % % % % % % % %
ml=bombs_m_s;
AB=bombs_AB;
% % % % % % % % % % % % % % % % % % % % % % %

cache=size(ml);
N=cache(1); % 测深点总数
M=cache(2); % 每个测深点AB改变次数


rho_s(N,M)=0;
for i=1:N
    rho_s(i,:)=judge_AB(AB,ml(i,:));
end


% 电测深曲线
% a=AB;
% for i=1:N
%     b=rho_s(i,:);
%     values = spcrv([[(1) a a(end)];[b(1) b b(end)]],3);
%     plot(values(1,:),values(2,:));
%     hold on
% end
% title('电测深曲线');
% % 特定标题
% % title('ISIPG1测线电测深曲线');
% % title('ISIPG2测线电测深曲线');
% % title('便民通道南口上测线电测深曲线');
% % title('便民通道北口上测线电测深曲线');
% xlabel('AB/2');
% ylabel('\rho_s');


% 等视电阻率断面图
a=1:N;
for i=1:M
    b=rho_s(:,i)';
    c=spcrv([[(1) a a(end)];[b(1) b b(end)]],3);
    d=c(1,:);
    rho_s_s(i,:)=c(2,:);
end

% cache_2=find(any(isnan(rho_s_s)));
% d=d(cache_2);
% rho_s_s=rho_s_s(:,cache_2);

[~,y,z]=unique(d);

for i=1:length(y)
    d_c=d(y);
    rho_s_s_c=rho_s_s(:,y);
end

[x,y]=contour(d_c,AB,rho_s_s_c);
clabel(x,y);
% title('等视电阻率断面图');
% 特定标题
% title('ISIPG1测线等视电阻率断面图');
% title('ISIPG2测线等视电阻率断面图');
% title('便民通道南口上测线等视电阻率断面图');
% title('便民通道北口上测线等视电阻率断面图');
xlabel('PT');
ylabel('AB/2');
% set(gca,'xaxislocation','top'); % 将x轴置于图像上部
set(gca,'ydir','reverse'); % 将y轴反转