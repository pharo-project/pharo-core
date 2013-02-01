initialization
initialize
	"Initialization code for CriticRulesBrowser"
	
	 super initialize.


	checker := SmalllintManifestChecker new.
	criticModel checker: checker.	
	countOfFalsePositive := Dictionary new.
	countOfToDo := Dictionary new.	
	countOfProblem := Dictionary new.	
		
