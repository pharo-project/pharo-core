registry
unregister: anObject
"boilerplate WeakRegistry usage"
	^self registry remove: anObject ifAbsent:[]