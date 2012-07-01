self-updating
didCodeChangeElsewhere
	"Determine whether the code for the currently selected method and class has been changed somewhere else."
	| aClass aSelector aCompiledMethod |
	currentCompiledMethod ifNil: [^ false].

	(aClass := self selectedClassOrMetaClass) ifNil: [^ false].

	(aSelector := self selectedMessageName) ifNil: [^ false].

	self classCommentIndicated
		ifTrue: [^ currentCompiledMethod ~~ aClass organization commentRemoteStr].

	^ (aCompiledMethod := aClass compiledMethodAt: aSelector ifAbsent: [^ false]) ~~ currentCompiledMethod
		and: [aCompiledMethod last ~= 0 "either not yet installed"
				or: [ currentCompiledMethod last = 0 "or these methods don't have source pointers"]]