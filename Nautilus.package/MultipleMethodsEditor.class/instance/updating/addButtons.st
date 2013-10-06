addButtons
	editors
		doWithIndex: [ :e :i | 
			| button |
			(i == 1)
				ifTrue: [ 
					button := self newButtonFor: e label: 'current']
				ifFalse: [ 
					button := self newButtonFor: e label: (i-1) printString .
					button setBalloonText: e balloonText ].
			buttonsContainer addMorph: button ]