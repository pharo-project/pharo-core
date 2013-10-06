openOnInteger
	| ui layout |
	
	ui := DynamicComposableModel new.
	ui instantiateModels: #( 
		text LabelModel
		plus ButtonModel
		minus ButtonModel ).
		
	ui text text: object contents asString.
	ui minus 
		label: '-';
		state: false;
		action: 	[ 
			object contents: object contents -1.
			ui text text: object contents asString ].

	ui plus 
		label: '+';
		state: false;
		action: 	[ 
			object contents: object contents +1.
			ui text text: object contents asString ].
	
	layout := SpecLayout composed
		newColumn: [ :c |
			c
				add: #text height: 25;
				newRow: [ :r | r add: #minus ; addSplitter; add: #plus ] height: 25 ];
		yourself.
				
	ui openWithSpecLayout: layout.