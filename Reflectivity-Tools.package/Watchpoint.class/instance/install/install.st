install

	node hasWatchpoint ifTrue: [ self error: 'Node already has a watchpoint'].
	
	link := MetaLink new 
				metaObject: self;
				selector: #addValue:;
				arguments: #(value);
				control: #after;
				condition: [ recording ];
				option: #(+ optionWeakAfter).
	node link: link.
	self class add: self on: node