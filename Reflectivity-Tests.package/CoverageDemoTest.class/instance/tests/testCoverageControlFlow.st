testCoverageControlFlow
	| link |
	link := MetaLink new
		metaObject: #node;
		selector: #tagExecuted.
	(ReflectivityExamples >> #exampleIfTrueIfFalse) ast nodesDo: [ :node | node link: link ].
	self assert: ReflectivityExamples new exampleIfTrueIfFalse = 5.
	self deny: ((ReflectivityExamples >> #exampleIfTrueIfFalse) ast sendNodes select: [ :each | each selector = 'bar' ]) first hasBeenExecuted.
	self assert:  (ReflectivityExamples >> #exampleIfTrueIfFalse) blockNodes second hasBeenExecuted.
	self flag: #TBD. "wrong"
	self assert: (ReflectivityExamples >> #exampleIfTrueIfFalse) ast hasBeenExecuted.
	ReflectivityExamples compileAll