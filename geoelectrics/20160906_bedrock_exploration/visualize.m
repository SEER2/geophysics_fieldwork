clear;
load data.mat;

N=20; % 第一条测线，20个点
% N=9; % 第二条测线，9个点

rho_s(N,6)=0;
for i =  1:N
    rho_s(i,:)=judge_AB(AB,first_m(i,:)); % 第一条测线
%     rho_s(i,:)=judge_AB(AB,second_m(i,:)); % 第二条测线
end

% 电测深曲线
a=AB;
for i = 1:N
    b=rho_s(i,:);
    values = spcrv([[(1) a a(end)];[b(1) b b(end)]],3);
    plot(values(1,:),values(2,:));
    hold on
end
title('ISIPG1测线电测深曲线') % 第一条测线
% title('ISIPG2测线电测深曲线') % 第二条测线
xlabel('AB/2');
ylabel('\rho_s');

% 等视电阻率断面图
% a=1:N;
% for i=1:6
%     b=rho_s(:,i)';
%     c=spcrv([[(1) a a(end)];[b(1) b b(end)]],3);
%     d=c(1,:);
%     rho_s_s(i,:)=c(2,:);
% end
% [~,y,z]=unique(d);
% for i=1:length(y)
%     d_c=d(y);
%     rho_s_s_c=rho_s_s(:,y);
% end
% [x,y]=contour(d_c,AB,rho_s_s_c);
% clabel(x,y);
% % title('ISIPG1测线等视电阻率断面图') % 第一条测线
% title('ISIPG2测线等视电阻率断面图') % 第二条测线
% xlabel('点位');
% ylabel('AB/2');
% % set(gca,'xaxislocation','top') % 将X轴置于图像上部
% set(gca,'ydir','reverse')

% rho_s平面等值线图
