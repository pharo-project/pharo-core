private
for: aValue do: doBlock separatedBy: separatorBlock 
	"This is implemented here since IBM Smalltalk doesn't implement a do:separatedBy: method"

	aValue isEmpty ifTrue: [^self].
	1 to: aValue size - 1
		do: 
			[:i | 
			doBlock value: (aValue at: i).
			separatorBlock value].
	doBlock value: aValue last