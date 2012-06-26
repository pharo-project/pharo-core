class list
findClass
	| pattern foundClass classNames index foundPackage |
	self okToChange ifFalse: [^ self classNotFound].
	pattern := (UIManager default request: 'Class Name?') asLowercase.
	pattern isEmptyOrNil ifTrue: [^ self].
	classNames := Set new.
	self packages do:[:p| classNames addAll: p classes keys].
	classNames := classNames asArray select: 
		[:n | (n asLowercase indexOfSubCollection: pattern startingAt: 1) > 0].
	classNames isEmpty ifTrue: [^ self].
	index := classNames size = 1
				ifTrue:	[1]
				ifFalse:	[(UIManager default chooseFrom: classNames lines: #())].
	index = 0 ifTrue: [^ self].
	foundPackage := nil.
	foundClass := nil.
	self packages do:[:p| 
		(p classes includesKey: (classNames at: index)) ifTrue:[
			foundClass := p classes at: (classNames at: index).
			foundPackage := p]].
	foundClass isNil ifTrue:[^self].
 	self systemCategoryListIndex: (self systemCategoryList indexOf: foundPackage packageName asSymbol).
	self classListIndex: (self classList indexOf: foundClass name). 