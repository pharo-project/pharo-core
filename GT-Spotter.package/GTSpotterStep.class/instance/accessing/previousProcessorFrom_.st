previousProcessorFrom: aCollection
	aCollection do: [ :each | 
		each processor ifNotNil: [ ^ each processor ] ]. " we assume they are all identical "
	^ GTSpotterProcessor new
		title: 'Items';
		filter: GTFilterSubstring;
		yourself