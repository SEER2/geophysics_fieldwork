function rho_s=judge_AB(AB, I)
% 判断AB间距取值范围，将绘图部分命令注释掉，亦用作draw_profile_papers的子程序
% AB, I 为数组，对应形式为(AB, I), 同阶列向量
% U为预设值，视情况更改.


U=11.0; % 视情况更改

L=AB/2;

rho_s=pi*(L.^2)*U./I;

% 绘图命令
% plot(L,rho_s);
% xlabel('AB/2');
% ylabel('\rho_s');
