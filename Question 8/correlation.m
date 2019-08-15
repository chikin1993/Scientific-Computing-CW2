% Script to calculate the value of the Spearmans rank correlation
% coefficient between node degree and clustering coefficient
correl = corr(degreelist', cluster','Type','Spearman');