package
addPackagesAsGroup: aCollection

	aCollection
		ifNotEmpty: [| packages list blocks name | 
			packages := aCollection sort: [:a :b | a name <= b name ].
			blocks := OrderedCollection new.
			packages do: [:package | blocks add: [ package orderedClasses]].
			name := ( packages collect: [:package | package name]) joinUsing: ' + '.
			^ (self groupsManager	
					addADynamicClassGroupNamed: name
					blocks: blocks)]