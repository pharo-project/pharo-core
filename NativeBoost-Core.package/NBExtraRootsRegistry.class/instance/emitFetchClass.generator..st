code generation
emitFetchClass: aClass generator: gen

	(self assert: aClass  isMeta not ).  " no metaclasses here"

	"make sure we registered it"
	self at: aClass name put: aClass.
	^ self emitOopAt: aClass name	generator: gen