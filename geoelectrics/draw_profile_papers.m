clear;
load;

% ml��ʾ�������ݣ�ABΪ����AB�������
% ����Ҫ��������ݸ���matlab.mat�е�����
% % % % % % % % % % % % % % % % % % % % % % %
ml=bombs_m_s;
AB=bombs_AB;
% % % % % % % % % % % % % % % % % % % % % % %

cache=size(ml);
N=cache(1); % ���������
M=cache(2); % ÿ�������AB�ı����


rho_s(N,M)=0;
for i=1:N
    rho_s(i,:)=judge_AB(AB,ml(i,:));
end


% ���������
% a=AB;
% for i=1:N
%     b=rho_s(i,:);
%     values = spcrv([[(1) a a(end)];[b(1) b b(end)]],3);
%     plot(values(1,:),values(2,:));
%     hold on
% end
% title('���������');
% % �ض�����
% % title('ISIPG1���ߵ��������');
% % title('ISIPG2���ߵ��������');
% % title('����ͨ���Ͽ��ϲ��ߵ��������');
% % title('����ͨ�������ϲ��ߵ��������');
% xlabel('AB/2');
% ylabel('\rho_s');


% ���ӵ����ʶ���ͼ
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
% title('���ӵ����ʶ���ͼ');
% �ض�����
% title('ISIPG1���ߵ��ӵ����ʶ���ͼ');
% title('ISIPG2���ߵ��ӵ����ʶ���ͼ');
% title('����ͨ���Ͽ��ϲ��ߵ��ӵ����ʶ���ͼ');
% title('����ͨ�������ϲ��ߵ��ӵ����ʶ���ͼ');
xlabel('PT');
ylabel('AB/2');
% set(gca,'xaxislocation','top'); % ��x������ͼ���ϲ�
set(gca,'ydir','reverse'); % ��y�ᷴת