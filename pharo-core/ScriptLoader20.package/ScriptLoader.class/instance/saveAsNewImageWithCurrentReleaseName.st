private
saveAsNewImageWithCurrentReleaseName
	| file |
	file := FileSystem workingDirectory  / (('Pharo-', self currentUpdateVersionNumber asString), '-Release'), Smalltalk imageSuffix.
	SmalltalkImage current saveAs: (file nextVersion basename copyUpToLast: Path extensionDelimiter). 