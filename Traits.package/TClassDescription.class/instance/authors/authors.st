authors
	"Returns a bag representing the author frequency based on the latest version of the methods of the receiver."

	^(self methods, self class methods) collect: [ :each | each author ] as: Bag .
	
	