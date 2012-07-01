as yet unclassified
writeStreamForFileNamed: aString replace: shouldReplace do: aBlock
	| file |

	file := (directory / aString).

	shouldReplace ifTrue: [ file delete ].

	file writeStreamDo:  [ :stream | 
		aBlock value: stream ].