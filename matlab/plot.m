% plot.m
%
% Drew Vollmer 2020-07-21

clear;
clc;



bar([sim_moments(2:6); observed_moments(2:6)]')
title('Observed and Model-Implied Resale Prices')
ylabel('Price')
xlabel('Game')
legend({'Model-Implied','Observed'},'Location','northeast')
saveas(gcf,'graphics/resale_price_fit.png')
