system triggers
class: aClass recategorizedFrom: oldCategory to: newCategory 
	self announce: (RecategorizedEvent 
				class: aClass
				category: newCategory
				oldCategory: oldCategory)