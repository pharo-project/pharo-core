accessing
tableForEntry: ent
	^ (ent notEmpty and: [ent first isUppercase]) 
			ifTrue: [ctable]
			ifFalse: [table]