*Morphic-Pluggable Widgets
detectIndex: aBlock

	^ self detectIndex: aBlock ifNone: [ self errorNotFound: aBlock ] 