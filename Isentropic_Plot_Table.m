close all; clear; clc;

%% DATA INPUT
M=0.1:0.1:5;
gamma=1.4;

%% CALCULATIONS
PobyP=(1+(((gamma-1)/2)*M.^2)).^(gamma/(gamma-1));
TobyT=1+(((gamma-1)/2)*M.^2);
RHOobyRHO=(1+(((gamma-1)/2)*M.^2)).^(1/(gamma-1));

%% PLOTTING
figure("Name", "Plots")
subplot(2,2,1)
plot(M,PobyP,'r-')
xlabel('M')
ylabel('P_o/P')
title("Plot for P_o/P vs M")
grid on
subplot(2,2,2)
plot(M,TobyT,'g-')
xlabel('M')
ylabel('T_o/T')
title("Plot for T_o/T vs M")
grid on
subplot(2,2,3)
plot(M,RHOobyRHO,'b-')
xlabel('M')
ylabel('\rho_o/\rho')
title("Plot for \rho_o/\rho vs M")
grid on

%% TABLE
name=["M","P_o/P","T_o/T","rho_o/rho"];
data=horzcat(M.',PobyP.',TobyT.',RHOobyRHO.');
fig1 = uifigure("Name", "Table");
table = uitable(fig1,"Data",data,"ColumnName",name);
