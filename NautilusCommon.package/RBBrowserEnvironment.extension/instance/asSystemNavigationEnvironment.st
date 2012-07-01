*NautilusCommon
asSystemNavigationEnvironment

	| env globalsNames |

	env := SystemDictionary new.
	
	self classesDo: [:each | 
		env add: ( Smalltalk globals associationAt: each theNonMetaClass name )].
	self traitsDo:  [:each | 
		env add: ( Smalltalk globals associationAt: each name )].
	globalsNames := Smalltalk globals keys asOrderedCollection.
	globalsNames removeAll: ( Smalltalk globals classNames ).
	 globalsNames removeAll: ( Smalltalk globals traitNames ).
	globalsNames do: [:each | 
		env add: ( Smalltalk globals associationAt: each )].

	^ env