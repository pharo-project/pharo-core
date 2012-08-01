protocol
selectorWidth: aNumber
	| layout |
	layout := SpecLayout composed 
				newRow: [:r | 
					r 
						newColumn: [:c | c add: #selector ] width: aNumber;
						add: #choice ]
				height: 25;
				yourself.
				
	self needRebuild: false.
	selector needRebuild: false.
	choice needRebuild: false.
	
	self buildWithSpecLayout: layout.