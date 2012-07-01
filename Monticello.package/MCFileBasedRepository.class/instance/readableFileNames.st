as yet unclassified
readableFileNames
	| all cached new |
	all := self allFileNames.	"from repository"
	cached := self cachedFileNames.	"in memory"
	new := all difference: cached.
	^ (cached asArray, new)
		select: [:ea | self canReadFileNamed: ea]