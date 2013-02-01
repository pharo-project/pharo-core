api
cleanUpForRelease
	"self new cleanUpForRelease"

	Author fullName: 'Mr.Cleaner'.
	self cleanUpMethods.

	ExternalDropHandler resetRegisteredHandlers.
	FreeTypeFontProvider current initialize.
	SystemNavigation new
		allObjectsDo: [ :each | 
			(each respondsTo: #releaseCachedState)
				ifTrue: [ each releaseCachedState ] ].
	
	"Remove empty categories, which are not in MC packages, because MC does
	not do this (this script does not make packages dirty)"
	Smalltalk organization removeEmptyCategories.
	Smalltalk
		allClassesAndTraitsDo: [ :class |
			[ :each |
				each
					removeEmptyCategories;
					sortCategories ]
						value: class organization;
						value: class class organization ].
	Smalltalk organization sortCategories.
	Smalltalk garbageCollect.
	Smalltalk cleanOutUndeclared. 
	Smalltalk fixObsoleteReferences.
	Smalltalk cleanUp: true except: #() confirming: false.
	Author reset