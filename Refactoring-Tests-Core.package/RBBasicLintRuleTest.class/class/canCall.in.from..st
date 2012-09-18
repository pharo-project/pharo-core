private
canCall: aSelector in: aClass from: anApplication 
	| methodApp root |
	(aClass canUnderstand: aSelector) ifFalse: [^false].
	root := anApplication rootApplication.
	methodApp := ((aClass whichClassIncludesSelector: aSelector) compiledMethodAt: aSelector)
				application rootApplication.
	^methodApp == root or: [root isBasedOn: methodApp]