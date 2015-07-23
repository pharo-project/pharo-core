for: anEntity by: aRule at: anInterval

	^ self new
		initializeRule: aRule
		target: anEntity
		selection: anInterval;
		yourself