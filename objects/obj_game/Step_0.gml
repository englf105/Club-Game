if (score >= score_max) {
	score -= score_max;
	score_max = score_max * 2;
	
	global.level += 1;
	
	health_max += 1;
	health = health_max;
	
}