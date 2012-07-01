importing
showFor: anAdd
	"for now an add is badly an array, I should introduce a real object here"
	| fractions name spec offsets |

	name := anAdd second first second asString.
	spec := anAdd second first third asString.
	fractions := anAdd second third third.
	offsets := anAdd second third fourth.
	
	fractionField text: fractions asString.
	offsetField text: offsets asString.
	instVars setSelectedItem: name.
	selectors setSelectedItem: spec.
	
	toolbar okAction: [ self modifyAdd: anAdd ]