validate
	form ifNil: [ ^ false ].
	renderer ifNil: [ self createRenderer ].
	((texture == nil) or: [form extent ~= extent]) ifTrue: [ self createTexture ].
	^ true