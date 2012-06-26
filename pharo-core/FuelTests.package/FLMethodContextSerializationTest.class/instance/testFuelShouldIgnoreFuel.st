tests
testFuelShouldIgnoreFuel
	"When serializing contexts, it may happen that internal objects used by Fuel such as clusters, mappers, etc., as found in the temps of the contexts, and hence they are serialized. This is something not desired. With this test we make sure that when we serialize a whole context, there is no Fuel objects. "
	
	| context serialization fuelClasses |
	3 timesRepeat: [Smalltalk garbageCollect].
	context := thisContextSample.
	fuelClasses := (PackageInfo named: 'Fuel') classes.
	serialization := self serializationOf: context.	
	serialization clusters do: [:cluster | 
		cluster objects do: [:object |
			self deny: (fuelClasses includes: object class) ] ].
