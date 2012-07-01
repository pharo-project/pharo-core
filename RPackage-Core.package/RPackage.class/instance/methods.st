all accessing
methods

	| mths |
	mths := OrderedCollection new.
	metaclassExtensionSelectors keysAndValuesDo: [:key :val | val do: [:sel | mths add: ((Smalltalk at: key) class >> sel)]].
	classExtensionSelectors keysAndValuesDo: [:key :val |val do: [:sel | mths add: ((Smalltalk at: key) >> sel)]].
	metaclassDefinedSelectors keysAndValuesDo: [:key :val | val do: [:sel | mths add: ((Smalltalk at: key) class >> sel)]].
	classDefinedSelectors keysAndValuesDo: [:key :val | val do: [:sel | mths add: ((Smalltalk at: key) >> sel)]].
	^ mths