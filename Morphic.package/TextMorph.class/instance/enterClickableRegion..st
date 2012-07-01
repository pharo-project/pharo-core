editing
enterClickableRegion: evt
	| index isLink |
	evt hand hasSubmorphs ifTrue:[^self].
	evt hand temporaryCursor ifNotNil:[^self].
	paragraph ifNotNil:[
		index := (paragraph characterBlockAtPoint: evt position) stringIndex.
		"isLink := (paragraph text attributesAt: index forStyle: paragraph textStyle) 
					anySatisfy:[:attr| attr mayActOnClick: evt].
		isLink ifTrue:[Cursor webLink show] ifFalse:[Cursor normal show]."
	].
