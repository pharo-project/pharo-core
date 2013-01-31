running
run

	| result |
	[
		self prepareForRunning.
		[ result := block cull: self ]
			on: JobNotification
			do: [ :notification | notification handle: self ]]
		ensure: [ self cleanupAfterRunning ].
	
	^ result.