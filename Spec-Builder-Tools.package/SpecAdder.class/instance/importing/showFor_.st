showFor: anAdd
	"for now an add is badly an array, I should introduce a real object here"
	| fractions name aSpec offsets |

	name := anAdd second first second asString.
	aSpec := anAdd second first third asString.
	fractions := anAdd second third third.
	offsets := anAdd second third fourth.
	
	fractionField text: fractions asString.
	offsetField text: offsets asString.
	instVars setSelectedItem: name.
	selectors setSelectedItem: aSpec.
	
	toolbar okAction: [ self modifyAdd: anAdd ]