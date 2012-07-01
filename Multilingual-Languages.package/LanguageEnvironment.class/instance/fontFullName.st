fonts support
fontFullName
	"(Locale isoLanguage: 'ja') languageEnvironment fontFullName"

	^ FileSystem disk workingDirectory resolve: self fontFileName
	