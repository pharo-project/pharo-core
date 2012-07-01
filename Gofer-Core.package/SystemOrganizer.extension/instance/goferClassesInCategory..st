*Gofer-Core-Accessing
goferClassesInCategory: category
	^ (self listAtCategoryNamed: category) collect: [ :className | self environment at: className ]