function rho_s=judge_AB(AB, I)
% �ж�AB���ȡֵ��Χ������ͼ��������ע�͵���������visualize���ӳ���
% AB, I Ϊ���飬��Ӧ��ʽΪ(AB, I), ͬ��������
% UΪԤ��ֵ�����������.


U=11.0; % ���������

L=AB/2;

rho_s=pi*(L.^2)*U./I;

% ��ͼ����
% plot(L,rho_s);
% xlabel('AB/2');
% ylabel('\rho_s');
