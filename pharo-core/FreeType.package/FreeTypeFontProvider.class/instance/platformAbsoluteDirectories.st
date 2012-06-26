file paths
platformAbsoluteDirectories
	| answer dir path |
	
	answer := OrderedCollection new.
	OSPlatform isWin32
		ifTrue: 
			[path := self getWindowsFontFolderPath.
			(path notNil and:[(dir := path asFileReference) exists])
				ifTrue:[answer add: dir]].
	OSPlatform isUnix
		ifTrue:
			[self getUnixFontFolderPaths do: [:each |
				(dir := each asFileReference) exists
					ifTrue:[answer add: dir]]].
	OSPlatform isMacOSX
		ifTrue: 
			[self getMacOSXFontFolderPaths do: [:each |
						(dir := each asFileReference) exists
							ifTrue: [answer add: dir]]].
	^answer