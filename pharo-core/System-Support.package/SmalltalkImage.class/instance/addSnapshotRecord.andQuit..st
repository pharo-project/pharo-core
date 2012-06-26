snapshot and quit
addSnapshotRecord: save andQuit: quit
	"Originally this code were in #snapshot:andQuit: .
	Just moved it to separate method to make caller more readable
	and don't look like swiss army knife which tries to do everything by own "
	
	| msg |
	(SourceFiles at: 2)
		ifNotNil: [ 
			msg := String
				streamContents: [ :s | 
					s
						nextPutAll: '----';
						nextPutAll:
								(save
										ifTrue: [ 
											quit
												ifTrue: [ 'QUIT' ]
												ifFalse: [ 'SNAPSHOT' ] ]
										ifFalse: [ 
											quit
												ifTrue: [ 'QUIT/NOSAVE' ]
												ifFalse: [ 'NOP' ] ]);
						nextPutAll: '----';
						print: Date dateAndTimeNow;
						space;
						nextPutAll: (self imageFile basename);
						nextPutAll: ' priorSource: ';
						print: LastQuitLogPosition ].
			self assureStartupStampLogged.
			save
				ifTrue: [ 
					LastQuitLogPosition := (SourceFiles at: 2)
						setToEnd;
						position ].
			self logChange: msg.
			self traceCr: msg ].
