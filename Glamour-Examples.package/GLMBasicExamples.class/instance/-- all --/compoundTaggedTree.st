compoundTaggedTree
	<glmBrowser: 'Tags' input: '#(window help home)'>
	"self new compoundTaggedTree openOn: #(window help home)"
	|browser |
	browser := GLMTabulator new.
	browser column: #one.
	browser transmit to: #one; andShow: [ :a | 
		a tree
			title: 'Combined Tags';
			tags: [:each | { {ThemeIcons current perform: (each, 'Icon') asSymbol . each asString }}].
		a tree
			title: 'Image Tags';
			tags: [:each | { ThemeIcons current perform: (each, 'Icon') asSymbol}].
		a tree
			title: 'Combined Tags - Filter by image';
			tags: [:each | 
				{ each == #help 
						ifTrue:[ {ThemeIcons current smallDeleteIcon . 'no ok' } ] 
						ifFalse:[ {ThemeIcons current smallOkIcon . each asString } ]} ];
			tagsFilter: [:each | 
				{ each == #help 
						ifTrue:[ ThemeIcons current smallDeleteIcon ] ifFalse:[ ThemeIcons current smallOkIcon ] } ].
		a tree
			title: 'Combined Tags - Filter by label';
			tags: [:each | 
				{ {ThemeIcons current perform: (each, 'Icon') asSymbol.
					each == #help ifTrue:[ 'no ok' ] ifFalse:[ 'ok' ]}} ];
			tagsFilter: [:each | 
				{ each == #help ifTrue:[ 'no ok' ] ifFalse:[ 'ok' ] } ] ].
	^ browser