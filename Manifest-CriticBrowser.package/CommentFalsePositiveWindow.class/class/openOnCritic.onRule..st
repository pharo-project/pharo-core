instance creation
openOnCritic: aCritc onRule: aRule
	
	self new
		critic: aCritc;
		rule: aRule;
		initForFalsePositive;		
		openWithSpec. 