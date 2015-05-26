initializeGranularity

	granularity
		items: {
			#beFullStack -> 'Submit the full stack trace'.
			#beCore -> 'Submit only core classes'.
			#beDisabled -> 'Disable submission' };
		displayBlock: [ :e | e value translated ]