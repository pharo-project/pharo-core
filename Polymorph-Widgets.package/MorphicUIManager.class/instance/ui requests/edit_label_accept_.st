edit: aText label: labelString accept: anAction
	"Open an editor on the given string/text"

	^(Smalltalk tools workspace openLabel: labelString)
		acceptContents:  aText;
		acceptAction: anAction;
		yourself.
	