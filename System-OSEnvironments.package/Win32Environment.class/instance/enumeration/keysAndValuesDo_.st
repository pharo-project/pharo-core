keysAndValuesDo: aBlock
	"Under windows the environemtn variables are a single big String."

	"Lines starting with an equal sign are invalid per    
	  http://stackoverflow.com/questions/10431689/what-are-these-strange-environment-variables"

	| environmentStrings nexString |
	environmentStrings := self environmentStrings.
	[ 
	nexString := environmentStrings readString.
	nexString ifEmpty: [ ^ self ].
	nexString first = $=
		ifFalse: [ self keysAndValuesDo: aBlock withAssociationString: nexString ].
	environmentStrings := NBExternalAddress value: environmentStrings value + nexString size + 1 ] repeat