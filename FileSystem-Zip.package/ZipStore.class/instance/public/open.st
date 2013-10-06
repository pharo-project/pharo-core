open
	| archive output |
	self reference exists
		ifFalse: [ ^ self ].
	archive := ZipArchive new.
	self reference
		readStreamDo: [ :input | 
			archive readFrom: input contents readStream.
			archive members
				do: [ :member | 
					| path |
					path := self pathFromMember: member.
					member isDirectory
						ifTrue: [ self ensureCreateDirectory: path ]
						ifFalse: [ 
							self ensureCreateDirectory: path parent.
							self createFile: path.
							self
								replaceFile: path
								in: [ :bytes | 
									output := bytes writeStream.
									member rewindData.
									member copyRawDataTo: output.
									output contents ] ] ] ].
	^ self