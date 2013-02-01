instance creation
openOnRule: aRule onEnvironment: aEnv

	| cbr |
	cbr :=  self new rules: aRule;
		environment: aEnv;
		yourself.

	cbr openWithSpec.
	cbr applyRules. 
	cbr rulesModel  changed:  #listElementAt:.