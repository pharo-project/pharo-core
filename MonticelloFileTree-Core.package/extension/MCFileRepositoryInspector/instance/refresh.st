refresh
	loadedPackages := Set new.
	versions := repository retrieveVersionsWithPackageNames: Set new.
	newer := Set new.
	loaded := Set new.
	MCWorkingCopy allManagers
		do: [ :each | 
			| latest |
			loadedPackages add: each package name.
			each ancestors do: [ :ancestor | loaded add: ancestor name ].
			latest := versions select: [ :v | v first = each package name ].
			latest
				do: [ :aV | 
					each ancestors
						do: [ :ancestor | 
							| anVersion |
							anVersion := ((ancestor name copyAfterLast: $-) copyAfter: $.) asInteger.
							(anVersion < aV third
								or: [ anVersion = aV third and: [ ((ancestor name copyAfterLast: $-) copyUpTo: $.) ~= aV second ] ])
								ifTrue: [ newer add: aV last ] ] ] ].
	self
		packageListUpdate;
		changed: #versionList