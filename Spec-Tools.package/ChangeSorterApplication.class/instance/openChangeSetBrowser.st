menu - change set
openChangeSetBrowser
	| cs env |
	
	cs := self selectedChangeSet.
	cs ifNil: [ ^ nil ].
	
	env := RBBrowserEnvironment new forClasses: cs changedClasses.

	Smalltalk tools browser fullOnEnvironment: env