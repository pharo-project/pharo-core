visiting
visitReference: anEntry
	
	| reference relativePath |
	reference := anEntry reference.
	relativePath := reference relativeTo: root.
	relativePath segments inject: root into: [ :ref :segment | | ancestor |
		ancestor := ref / segment.
		(ancestor isDirectory and: [ ancestor isSymlink ])
			ifTrue: [ ^ self error: ancestor fullName, ' is a symlinked directory. Skipping ', (reference relativeTo: ancestor) asString ] ].
	reference delete.