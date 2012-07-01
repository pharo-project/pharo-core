initialization-release
openAsMorphName: labelString multiSelect: multiSelect 
	"Open a morphic view for the messageSet, whose label is labelString. 
	The listView may be either single or multiple selection type"

	^UIManager default openChangeList: self asMorphName: labelString multiSelect: multiSelect
