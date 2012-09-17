all accessing
methods
	| methods |
	
	methods := OrderedCollection new.
	metaclassExtensionSelectors keysAndValuesDo: [:key :val | val do: [:sel | methods add: ((Smalltalk at: key) class >> sel)]].
	classExtensionSelectors keysAndValuesDo: [:key :val |val do: [:sel | methods add: ((Smalltalk at: key) >> sel)]].
	metaclassDefinedSelectors keysAndValuesDo: [:key :val | val do: [:sel | methods add: ((Smalltalk at: key) class >> sel)]].
	classDefinedSelectors keysAndValuesDo: [:key :val | val do: [:sel | methods add: ((Smalltalk at: key) >> sel)]].
	
	^methods