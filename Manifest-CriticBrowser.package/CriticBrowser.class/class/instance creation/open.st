open

	| env rules  |
	rules :=  RBCompositeLintRule allGoodRules rules.
	env := (RBPackageEnvironment new packages: ((MCWorkingCopy  allManagers asOrderedCollection) copyFrom: 1 to: 20)).
	
	self openOnRule: rules onEnvironment:  env
	

	.