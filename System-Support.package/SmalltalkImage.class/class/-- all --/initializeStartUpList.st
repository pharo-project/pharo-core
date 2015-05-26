initializeStartUpList
	"SmalltalkImage initializeStartUpList"

	| oldList |
	oldList := StartUpList.
	StartUpList := OrderedCollection new.	"These get processed from the top down..."
	#(
		SmallInteger 
		Delay 
		DisplayScreen
		Cursor
		InputEventFetcher
		ProcessorScheduler
		LanguageEnvironment
		NaturalLanguageTranslator
		ShortIntegerArray
		ShortRunArray)
		do: [ :className | className asClassIfPresent: [ :theClass | Smalltalk addToStartUpList: theClass ] ].
	
	oldList ifNotNil: [ 
		oldList
			do: [ :className | className asClassIfPresent: [ :theClass | Smalltalk addToStartUpList: theClass ] ] ].
		
	#WorldMorph asClassIfPresent: [ :theClass | Smalltalk addToStartUpList: theClass ]