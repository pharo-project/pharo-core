reading
fileInFrom: aStream
	| changes |
	changes := ChangeSet scanFile: aStream from: 0 to: aStream size.
	aStream close.
	('Processing ', self packageName) 
		displayProgressFrom: 1
		to: changes size
		during:[:bar| | chgRec |
			1 to: changes size do:[:i|
				bar current: i.
				chgRec := changes at: i.
				self perform: (chgRec type copyWith: $:) asSymbol
with: chgRec.
			].
		].