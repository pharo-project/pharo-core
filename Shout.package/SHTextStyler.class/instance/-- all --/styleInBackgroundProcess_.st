styleInBackgroundProcess: aText
	self terminateBackgroundStylingProcess.
	stylingEnabled
		ifFalse: [ ^ self ].
	text := aText copy.
	self monitor
		critical: [ 
			sem := Semaphore new.
			[ 
				sem notNil
					ifTrue: [ 
						sem 
							waitTimeoutSeconds: 5
							onCompletion: [ view ifNotNil: [ view stylerStyledInBackground: text ] ]
							onTimeout: [ "do nothing if the styling has not finished or the process turned into a zombie." ] ] 
			] forkAt: Processor activePriority.
			backgroundProcess := [ 
			self privateStyle: text.
			sem signal ] forkAt: Processor userBackgroundPriority ]