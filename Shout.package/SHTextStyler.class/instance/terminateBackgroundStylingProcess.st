private
terminateBackgroundStylingProcess
	self monitor
		critical: [backgroundProcess
				ifNotNil: [backgroundProcess terminate.
					backgroundProcess := nil].
			sem
				ifNotNil: [sem terminateProcess.
					sem := nil]]