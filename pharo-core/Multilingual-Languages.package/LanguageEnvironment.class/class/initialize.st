initialization
initialize
	"LanguageEnvironment initialize"

	Smalltalk addToStartUpList: LanguageEnvironment after: DiskStore.
	Smalltalk addToStartUpList: DiskStore after: LanguageEnvironment.
