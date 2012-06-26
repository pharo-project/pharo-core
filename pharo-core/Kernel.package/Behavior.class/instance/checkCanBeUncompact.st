private
checkCanBeUncompact 
	"Certain classes cannot be uncompacted in CogVM.  If you download VMMaker and see the VM code, these are as defined by StackInterpreter>>#checkAssumedCompactClasses and the ones that can't be uncompacted are the following: "
	({ Array. LargeNegativeInteger. LargePositiveInteger. Float. MethodContext } includes: self)
		 ifTrue: [ self error: 'Class ', self name, ' cannot be uncompact. ' ]
