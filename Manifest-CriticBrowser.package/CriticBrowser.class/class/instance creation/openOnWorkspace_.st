openOnWorkspace: aWorkspace

	| cbr |
	cbr :=  self new 
		rules: aWorkspace rule;
		environment: aWorkspace environment;
		removeTestCase: aWorkspace removeTestCase;
		yourself.

	cbr openWithSpec.
	cbr applyRules. 
	cbr rulesModel  changed:  #listElementAt:.