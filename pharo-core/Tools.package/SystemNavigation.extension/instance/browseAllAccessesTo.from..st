*Tools-Browser
browseAllAccessesTo: instVarName from: aClass
	"Create and schedule a Message Set browser for all the receiver's methods 
	or any methods of a subclass/superclass that refer to the instance variable name."

	"self new browseAllAccessesTo: 'contents' from: Collection."
	
	| coll |
	coll := OrderedCollection new.
	Cursor wait showWhile: [
		aClass withAllSubAndSuperclassesDo: [:class | 
			(class whichSelectorsAccess: instVarName) do: [:sel |
					coll add: (self createMethodNamed: sel realParent: class)]]].
	^ self 
		browseMessageList: coll 
		name: 'Accesses to ' , instVarName 
		autoSelect: instVarName