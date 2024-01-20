%% vars 1ph totem pole
clear vars
close all
l_ind   = 200;              %uH
c_out   = 900;              %uF
c_inp   = 4.7;              %uF
l_ccm   = 1;                %mH
fsw     = 65;               %kHz
vin     = 230*sqrt(2);      %Vac
%% PI Discretization
kp = .0065;
ki = 5e4;
t_sam=1/65e3;
g_c=tf([kp ki],[1 0]);
g_c_d=c2d(g_c,t_sam,'tustin'); %Bilinear
g_c_d.Numerator{1}(1)+g_c_d.Numerator{1}(2);

% P2=bodeoptions; 
% P2.MagUnits='abs';
% P.MagScale='linear';
% P2.FreqUnits='Hz';
% P2.FreqScale='linear';
% P2.PhaseVisible='on';
% bode(g_c_d,P2,[0:1:400])
