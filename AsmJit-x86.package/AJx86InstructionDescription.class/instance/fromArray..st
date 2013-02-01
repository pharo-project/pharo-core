initialize-release
fromArray: arr
	| tmp |
	name := arr at: 1.
	group := arr at: 2.
	groupEmitSelector := ('emit', group,':operand1:operand2:operand3:') asSymbol.
	
	tmp := arr at: 3.
	tmp isSymbol ifTrue: [ tmp := self translateSymFlag: tmp ].
	o1Flags := tmp.
	o2Flags := arr at: 4.
	opCodeR := arr at: 5.
	opCode1 := arr at: 6.
	opCode2 := arr at: 7.