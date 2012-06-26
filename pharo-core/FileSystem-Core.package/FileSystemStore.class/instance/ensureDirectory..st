public
ensureDirectory: aPath
	(self isDirectory: aPath) ifTrue: [ ^ self ].
	self ensureDirectory: aPath parent.
	self createDirectory: aPath