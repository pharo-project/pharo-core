initialization
initialize
	"Initialization code for CriticRulesBrowser"
	
	 super initialize.

	checker := SmalllintManifestChecker new.
	criticModel checker: checker.	
	numberOfFalsePositives := Dictionary new.
	numberOfToDos := Dictionary new.	
	numberOfProblems := Dictionary new.	
		
