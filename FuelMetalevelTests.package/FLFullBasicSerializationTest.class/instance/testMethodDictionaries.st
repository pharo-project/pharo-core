tests-long
testMethodDictionaries
	"Tests correct serialization of all the method dictionaries in the System package."

	| methodDicts |
	methodDicts := OrderedCollection new.
	methodDicts addAll: ((SystemNavigation new allClassesInPackageNamed: 'System') 
		collect: [ :aClass | aClass methodDict ]).
		
	methodDicts do: [ :anObject | self resultOfSerializeAndMaterializeMethodDictionary: anObject ]	
	