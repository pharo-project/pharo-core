spotterForVersionsFor: aStep
	<spotterOrder: 1>
	aStep listProcessor
		title: 'Versions';
		allCandidates: [
			(#( stableVersion currentVersion bleedingEdge development ) 
				collect: [ :each | [ self perform: each ] on: Error do: [  nil ] ]) 
				reject: [ :each | each isNil ] ];
		itemName: [ :version | version versionString ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true