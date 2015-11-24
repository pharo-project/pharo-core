install
	link := MetaLink new 
				metaObject: self;
				selector: #addValue:;
				arguments: #(value);
				control: #after.
	node link: link.
	self class add: self on: node