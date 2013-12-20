defaultSpec 
	<spec>
	
	^ SpecLayout composed
		newRow: [  :r |
		
		r
		newColumn: [ :col |
			
			col 
				add: #dummyMorph
			
			 ];
		newColumn: [ :col |
			
			col newRow: [ :row | row add: #textPane  ].
				
			col newRow: [ :row | row add: #nextButton; add: #prevButton  ] height: 50 .
			
		]
	]