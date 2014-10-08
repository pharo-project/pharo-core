gtInspectorItemsIn: composite
	^ composite table
		title: [ :anObject | anObject size asString, ' items' ];
		display: [ :aCollection | (1 to: self size) collect: [ :index | index -> (self at: index) ] ];
		beMultiple;
		searchOn: [:text :each | 
			Compiler evaluate: ' | entity each | each := self. entity := each.', text for: each value logged: false];
		column: 'Index' evaluated: [ :assoc | assoc key asString ];
		column: 'Item' evaluated: [ :assoc | GTObjectPrinter new asTruncatedTextFrom: assoc value ];
		send: [ :result | 
			result isNil
				ifTrue: [ nil ]
				ifFalse: [ result value size = 1 
					ifTrue: [result anyOne value]  
					ifFalse: [self species withAll: (result collect: [:each | each value])]]];
		showOnly: 50;
		helpMessage: 'Quick selection field. Given your INPUT, it executes: self select: [:each | INPUT ]'.