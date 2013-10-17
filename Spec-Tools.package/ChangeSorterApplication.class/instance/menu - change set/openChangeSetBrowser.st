openChangeSetBrowser
	| cs |
	
	cs := self selectedChangeSet ifNil: [^self].
	^Smalltalk tools browser fullOnEnvironment: (RBBrowserEnvironment new forClasses: cs changedClasses)