importCategory
	"import all the classes of the class categories matching the receiver name (following package info semantics)." 
	
	| cat classesInCat |
	cat := Smalltalk globals organization categories select: [:each | each beginsWith: self name ]. 
	classesInCat := cat gather: [:c | Smalltalk globals organization listAtCategoryNamed: c].
	classesInCat do: [:each | self importClass: (Smalltalk globals at: each) ]