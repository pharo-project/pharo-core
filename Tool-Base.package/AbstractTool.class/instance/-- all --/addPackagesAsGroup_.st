addPackagesAsGroup: aCollection

	aCollection
		ifNotEmpty: [| packages blocks name | 
			packages := aCollection sort: [:a :b | a name <= b name ].
			blocks := OrderedCollection new.
			packages do: [:package | blocks add: (self class groupBlockFor: package)].
			name := ( packages collect: [:package | package name]) joinUsing: ' + '.
			^ (self groupsManager	
					addADynamicClassGroupNamed: name
					blocks: blocks)]