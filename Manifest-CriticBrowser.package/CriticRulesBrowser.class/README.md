I'am a browser for the SmallLint Critics

example: 
	rule :=  RBCompositeLintRule filterRules.
environment := (PackageEnvironment new packages: {PackageInfo named: 'Manifest'}).

(CriticRulesBrowser runRule: rule onEnvironment: environment)
	openWithSpec.
	
