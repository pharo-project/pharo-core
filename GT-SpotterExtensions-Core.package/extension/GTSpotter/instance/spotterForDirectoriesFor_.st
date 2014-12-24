spotterForDirectoriesFor: aStep
	<spotterOrder: 50>
	| processor |
	processor := aStep listProcessor.
	processor
		title: 'Directories';
		wantsToDisplayOnEmptyQuery: false;
		filter: [ :originalQuery :stream | 
					self
						filterByQuery: originalQuery
						forReferencesComputedAs: [ :root | root directories ]
						inProcessor: processor
						onStream: stream ]