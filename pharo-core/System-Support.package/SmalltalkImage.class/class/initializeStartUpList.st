initialization
initializeStartUpList
	"SmalltalkImage initializeStartUpList"

	| oldList |
	oldList := StartUpList.
	StartUpList := OrderedCollection new.	"These get processed from the top down..."
	#(#Delay #DisplayScreen #Cursor #InputEventFetcher #ProcessorScheduler #LanguageEnvironment #NaturalLanguageTranslator #ShortIntegerArray #ShortRunArray)
		do: [ :clsName | Smalltalk globals at: clsName ifPresent: [ :cls | Smalltalk addToStartUpList: cls ] ].
	oldList
		ifNotNil: [ 
			oldList
				do: [ :className | Smalltalk globals at: className ifPresent: [ :theClass | Smalltalk addToStartUpList: theClass ] ] ].
	#(#PasteUpMorph) do: [ :clsName | Smalltalk globals at: clsName ifPresent: [ :cls | Smalltalk addToStartUpList: cls ] ]