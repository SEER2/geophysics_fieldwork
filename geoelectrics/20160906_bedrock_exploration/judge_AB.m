function rho_s=judge_AB(AB, I)
% AB, I 为数组，对应形式为(AB, I)
% U为预设值，视情况更改


U=36.0; % 视情况更改

L=AB/2;

rho_s=pi*(L.^2)*U./I;

% plot(L,rho_s);
% xlabel('AB/2');
% ylabel('\rho_s');