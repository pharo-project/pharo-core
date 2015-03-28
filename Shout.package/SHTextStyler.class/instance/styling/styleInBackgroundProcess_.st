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
					sem waitTimeoutSeconds: 5.
					view ifNotNil: [ view stylerStyledInBackground: text ] ] ] forkAt: Processor activePriority.
			backgroundProcess := [ 
			self privateStyle: text.
			sem signal ] forkAt: Processor userBackgroundPriority ]