addLinkAttributesFor: ranges in: aText to: charAttributes
	| links |
	"TODO: put this on class side"
	links := Dictionary new.
 
	"see SHTextStylerST80 class >> #defaultStyleTable for more types"
	links at: #instVar put: [ :aString| RubTextVariableLink variableName: aString ].
	links at: #globalVar put: [ :aString| RubTextClassLink className: aString ].
	#(binary unary  keyword) do: [ :type|
		links at: type put: [ :aString| RubTextMethodLink selector: aString ]].
	#(pragmaUnary pragmaBinary patternBinary patternUnary patternKeyword) do: [ :type|
		links at: type put: [ :aString| RubTextMethodLink selector: aString senders: true]].
	links at: #true put: [ :aString| RubTextClassLink class: True ].
	links at: #false put: [ :aString| RubTextClassLink class: False ].
	links at: #nil put: [ :aString| RubTextClassLink class: UndefinedObject ].
	links at: #character put: [ :aString| RubTextClassLink class: Character ].
	
	"set the attrinbutes on the text"
	ranges do: [ :range|
		links at: range type ifPresent: [ :action| |attributes|
			attributes := charAttributes at: range start.
			attributes := attributes, { action cull: (range stringIn: aText) }.
			charAttributes 
				from: range start
				to: range end
				put: attributes ]]