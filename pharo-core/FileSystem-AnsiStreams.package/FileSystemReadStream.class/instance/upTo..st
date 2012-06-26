ansi gettable
upTo: anObject
	
	| byte |
	^ ByteArray streamContents:
		[:out |
		[self atEnd or: [(byte := self next) = anObject]] whileFalse:
			[out nextPut: byte]]
		