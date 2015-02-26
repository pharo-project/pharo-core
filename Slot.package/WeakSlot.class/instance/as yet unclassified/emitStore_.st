emitStore: aMethodBuilder
	"Push the weak array into the stack"
	| temp |
	temp := Object new.
	aMethodBuilder addTemp: temp.
	aMethodBuilder storeTemp: temp.
	aMethodBuilder pushInstVar: index.
	aMethodBuilder pushLiteral: 1.
	aMethodBuilder pushTemp: temp.
	aMethodBuilder send: #at:put: