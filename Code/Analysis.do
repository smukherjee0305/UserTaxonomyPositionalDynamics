xtset label month

gen coreness2 = .
replace coreness2 = 3 if kcore >= 2 & lcore >= 2
replace coreness2 = 2 if kcore >= 2 & lcore < 2
replace coreness2 = 1 if kcore < 2 & lcore >= 2
replace coreness2 = 0 if kcore < 2 & lcore < 2


pwcorr rank reputation goldbadges activedurationdays clusteringcoefficient betweennesscentrality instrength outstrength hubscore authorityscore burtsconstraint coreness2

xtologit rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore

estat ic

regress rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore

estat vif

xtologit rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore instrength outstrength

estat ic

regress rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore instrength outstrength

estat vif


xtologit rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore coreness2

estat ic

regress rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore coreness2

estat vif


xtologit rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore burtsconstraint

estat ic

regress rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore burtsconstraint

estat vif


xtologit rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore coreness2 burtsconstraint

estat ic

regress rank reputation goldbadges activedurationdays betweennesscentrality clusteringcoefficient hubscore authorityscore coreness2 burtsconstraint

estat vif

summarize instrength outstrength betweennesscentrality clusteringcoefficient reputation activedurationdays herfindahlindex goldbadges burtsconstraint hubscore authorityscore coreness2