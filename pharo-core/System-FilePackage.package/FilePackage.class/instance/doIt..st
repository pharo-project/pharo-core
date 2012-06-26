change record types
doIt: chgRec
	| string |
	string := chgRec string.
	('*ubclass:*instanceVariableNames:*classVariableNames:*poolDictionaries:*category:*'
		match: string) ifTrue:[^self classDefinition: string with: chgRec].
	('* class*instanceVariableNames:*'
		match: string) ifTrue:[^self metaClassDefinition: string with: chgRec].
	('* removeSelector: *'
		match: string) ifTrue:[^self removedMethod: string with: chgRec].
	('* comment:*'
		match: string) ifTrue:[^self msgClassComment: string with: chgRec].
	('* initialize'
		match: string) ifTrue:[^self]. "Initialization is done based on class>>initialize"
	('''From *'
		match: string) ifTrue:[^self possibleSystemSource: chgRec].
	doIts add: chgRec.