I'm the event sent by the system when a method or a class is recategorized.

To retrieve information, you can access to:
	item: the CompiledMethod or the class recategorized
	itemKind: #method for a method, #class for a class
	environment: aDictionary with new information
		for a method:
			- #class: the class of the method (it hasn't changed)
			- #protocol: the new category of the method
			- #selector: the selector of the method (it hasn't changed)
		for a class: 
			- #category: the new category
	oldCategory: the category where the item was formerly categorized