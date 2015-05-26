initializeIcons
	icons :=  LRUCache new 
		maximumWeight: 64;
		factory: [ :key | self perform: key];
		yourself
