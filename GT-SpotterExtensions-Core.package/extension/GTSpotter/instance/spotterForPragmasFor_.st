spotterForPragmasFor: aStep
	<spotterOrder: 40>
	aStep listProcessor 
			allCandidates: [:x | PragmaType all ];
			title: 'Pragmas';
			itemName: [ :pragma | pragma keyword ];
			matchSubstring;
			wantsToDisplayOnEmptyQuery: false