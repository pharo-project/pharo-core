buildBrowser
	| browser |
	
	browser := GLMTabulator new
		title: self class title;
		row: #projects;
		row: #detail;
		yourself.
	
	browser transmit 
		to: #projects;
		andShow: [ :a | 
			a list
				title: 'Available';
				act: [ :presenter | self onInstallFrom: presenter ] icon: Smalltalk ui icons glamorousAccept entitled: 'Install stable version';
				act: [ :presenter | self onLoadFrom: presenter ]	icon: Smalltalk ui icons configIcon entitled: 'Load configuration (do not install project)';				
				act: [ :presenter | self onRefreshFrom: presenter ] icon: Smalltalk ui icons glamorousRefresh entitled: 'Refresh'; 
				selectionAct: [ :presenter | self onInstallFrom: presenter ] entitled: 'Install stable version';
				selectionAct: [ :presenter | self onLoadFrom: presenter ] entitled: 'Load configuration (do not install project)';
				display: [ :thisProvider | thisProvider projects ];
				format: [ :project | project name ];
				icon: [ :project | self iconFor: project ];
				filterOn: [ :text :each | each matches: text ];
				tags: [ :project | 
					project keywords isNil 
						ifTrue: [ #() ] 
						ifFalse: [ project allKeywords sorted ] ] ].
			
	browser transmit 
		from: #projects;
		to: #detail;
		andShow: [ :a |
			a text 
				title: 'Description';
				display: [ :project | project fullDescription ] ].
			
	^ browser