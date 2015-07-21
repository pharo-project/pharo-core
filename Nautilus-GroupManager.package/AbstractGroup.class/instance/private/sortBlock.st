sortBlock

	^ sortBlock ifNil: [ sortBlock := [:a :b | a printString <= b printString ]]