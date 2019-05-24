% plot for UL6 vs LL6 ML spread, Frandolig et al. Cell reports submission
% May 2019
% DATA in Maxime-1/Components for Chanel-Jackie-Kihwan paper/Analysis ML AP process spread
UL6= [1.307692308,
1.070412764,
1.069000337,
1.098307816,
1.101174345,
1.078447036,
1.277479092,
1.337888199,
1.164812942,
0.9842146803];
LL6=[2.310770113,
2.215566306,
1.934196657,
1.662676357,
1.80611667,
1.659937732,
1.800370693,
1.657267021,
1.6874872,
2.000350058,
1.643722896,
1.603268619,
2.327536962,
2.086353491,
1.701523796];

[p,h,stats]=ranksum(LL6, UL6);
%Results: Zval=4.1325; p<3.5881e-5

figure
pbaspect([1 2 1])
hold on
scatter(ones(1,15), LL6,  [],[255/255, 195/255, 0], 'filled')
scatter(ones(1,10)+1, UL6,  [],[57/255, 73/255, 171/255], 'filled')
title('Processes ML spread / Soma ML spread (p<3.5881e-5)')
ylabel('Ratio')
xticks([1,2])
xticklabels({'LL6', 'UL6'})
xlim([0,3])
ylim([0,3])
text(1,2.5,'n=15', 'HorizontalAlignment', 'center')
text(2,2.5,'n=10', 'HorizontalAlignment', 'center')

