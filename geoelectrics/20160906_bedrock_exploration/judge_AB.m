function rho_s=judge_AB(AB, I)
% AB, I Ϊ���飬��Ӧ��ʽΪ(AB, I)
% UΪԤ��ֵ�����������


U=36.0; % ���������

L=AB/2;

rho_s=pi*(L.^2)*U./I;

% plot(L,rho_s);
% xlabel('AB/2');
% ylabel('\rho_s');