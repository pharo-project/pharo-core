system triggers
class: aClass recategorizedFrom: oldCategory to: newCategory 
	self trigger: (RecategorizedEvent 
				class: aClass
				category: newCategory
				oldCategory: oldCategory)