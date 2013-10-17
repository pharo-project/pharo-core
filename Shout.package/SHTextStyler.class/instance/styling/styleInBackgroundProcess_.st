styleInBackgroundProcess: aText 
	self terminateBackgroundStylingProcess.
	stylingEnabled
		ifTrue: [text := aText copy.
			self monitor
				critical: [sem := Semaphore new.
					[sem notNil
						ifTrue: [sem wait.
							view
								ifNotNil: [view stylerStyledInBackground: text]]]
						forkAt: Processor activePriority.
					backgroundProcess := [self privateStyle: text.
							sem signal]
								forkAt: Processor userBackgroundPriority]]