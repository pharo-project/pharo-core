accessing
returnLabel
	^ returnLabel ifNil: [ 
		returnLabel := asm uniqueLabelName: 'Return' ]