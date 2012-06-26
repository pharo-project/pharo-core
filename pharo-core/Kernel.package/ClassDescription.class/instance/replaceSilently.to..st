instance variables
replaceSilently: old to: new
	"text-replace any part of a method.  Used for class and pool variables.  Don't touch the header.  Not guaranteed to work if name appears in odd circumstances"
	| oldName newName |

	oldName := old asString.
	newName := new asString.
	self withAllSubclasses do:
		[:cls |
		| sels |
		sels := cls selectors copyWithoutAll: #(DoIt DoItIn:).
		sels do:
			[:sel |
			| oldCode newCode parser header body |
			oldCode := cls sourceCodeAt: sel.
			"Don't make changes in the method header"
			(parser := cls parserClass new) parseSelector: oldCode.
			header := oldCode copyFrom: 1 to: (parser endOfLastToken min: oldCode size).
			body := header size > oldCode size
					ifTrue: ['']
					ifFalse: [oldCode copyFrom: header size+1 to: oldCode size].
			newCode := header , (body copyReplaceTokens: oldName with: newName).
			newCode ~= oldCode ifTrue:
				[cls compile: newCode
					classified: (cls organization categoryOfElement: sel)
					notifying: nil]].
		cls isMeta ifFalse:
			[| oldCode newCode |
			oldCode := cls comment.
			newCode := oldCode copyReplaceTokens: oldName with: newName.
			newCode ~= oldCode ifTrue:
				[cls comment: newCode]]]