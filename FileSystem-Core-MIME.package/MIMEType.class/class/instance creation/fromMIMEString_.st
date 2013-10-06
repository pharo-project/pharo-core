fromMIMEString: mimeString
	| idx main rest sub parameters |
	idx := mimeString indexOf: $/.
	idx = 0
		ifTrue: [self error: 'Illegal mime type string "' , mimeString , '".'].
	main := mimeString copyFrom: 1 to: idx-1.
	rest := mimeString copyFrom: idx+1 to: mimeString size.
	idx := mimeString indexOf: $;.
	idx = 0
		ifTrue: [sub := rest]
		ifFalse: [
			sub := rest copyFrom: 1 to: idx.
			parameters := rest copyFrom: idx+1 to: rest size].
	 ^self
		main: main
		sub: sub
		parameters: parameters
