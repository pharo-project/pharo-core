accessing method dictionary
allMethodCategoriesIntegratedThrough: mostGenericClass
	"Answer a list of all the method categories of the receiver and all its superclasses, up through mostGenericClass"

	| otherClassCategories thisClassCategories lowercaseSortBlock combinedClassCategories |
		
	otherClassCategories := OrderedCollection new.
	lowercaseSortBlock  := [ :a :b | a asLowercase <= b asLowercase ].
	
	(self allSuperclassesIncluding: mostGenericClass) do: [ :aClass | 
		 otherClassCategories addAll: aClass organization categories ].
	otherClassCategories remove: 'no messages' ifAbsent: [  ].
	thisClassCategories := self organization categories sort: lowercaseSortBlock.
													
	^ thisClassCategories , ((otherClassCategories asSet removeAllSuchThat: [ :each |
								thisClassCategories includes: each ]) sorted: lowercaseSortBlock)