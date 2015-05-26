syncContents
	| ch |
	process ifNotNil: [ process terminate ].
	process := nil.
	
	ch := codeHolder ifNil: [ ^ self contents: '' ].
		
	process := [  | ann |
		ann := ch annotation ifNil: [''].
		self defer: [ self contents: ann ].
	] newProcess.
	process priority: Processor userBackgroundPriority.
	process resume.
	