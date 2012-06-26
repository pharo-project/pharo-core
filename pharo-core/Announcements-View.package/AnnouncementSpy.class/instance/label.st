accessing-dynamic
label
	^ 'Spy: ', (self announcer ifNil: ['no announcer'] ifNotNil: [ self announcer printString ])
	