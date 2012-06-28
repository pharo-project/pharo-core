public
createDirectory: path
	| parent |
	parent := path parent.
	^ self
		nodeAt: parent
		ifPresent: [ :entry | 
			entry
				at: path basename
				ifPresent: [ :node | 
					node isDirectory
						ifTrue: [ self signalDirectoryExists: path ]
						ifFalse: [ self signalFileExists: path ] ].
			entry ensureDirectory: path basename  ]
		ifAbsent: [ self signalDirectoryDoesNotExist: parent ]