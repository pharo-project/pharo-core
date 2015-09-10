csv: aStream from: dependencyReport
	| links |
	links := OrderedCollection new.
	dependencyReport dependenciesDo: [ :packageName :dependencies |
		dependencies do: [ :dependency | 
			links add: (packageName , ',' , dependency , ',' , '1') ] ].
	aStream << 'source,target,value'; cr.
	links 
		do: [ :link | aStream << link ]
		separatedBy: [ aStream cr ]