clear;
load data.mat;

N=20; % ��һ�����ߣ�20����
% N=9; % �ڶ������ߣ�9����

rho_s(N,6)=0;
for i =  1:N
    rho_s(i,:)=judge_AB(AB,first_m(i,:)); % ��һ������
%     rho_s(i,:)=judge_AB(AB,second_m(i,:)); % �ڶ�������
end

% ���������
a=AB;
for i = 1:N
    b=rho_s(i,:);
    values = spcrv([[(1) a a(end)];[b(1) b b(end)]],3);
    plot(values(1,:),values(2,:));
    hold on
end
title('ISIPG1���ߵ��������') % ��һ������
% title('ISIPG2���ߵ��������') % �ڶ�������
xlabel('AB/2');
ylabel('\rho_s');

% ���ӵ����ʶ���ͼ
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
% % title('ISIPG1���ߵ��ӵ����ʶ���ͼ') % ��һ������
% title('ISIPG2���ߵ��ӵ����ʶ���ͼ') % �ڶ�������
% xlabel('��λ');
% ylabel('AB/2');
% % set(gca,'xaxislocation','top') % ��X������ͼ���ϲ�
% set(gca,'ydir','reverse')

% rho_sƽ���ֵ��ͼ
