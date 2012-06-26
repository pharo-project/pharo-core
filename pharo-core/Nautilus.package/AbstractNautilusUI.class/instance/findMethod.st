menus behavior
findMethod
	"Search for a method in the lookup of the selected class"

	| foundMethod class |
	self okToChange ifFalse: [^ self flashPackage ].

	foundMethod := self findMethodIn: self selectedClass.
	foundMethod ifNil: [^ self ].
	class := foundMethod methodClass.
	self showGroupsSilently: false.
 	self model package: class package class: class category: foundMethod protocol method: foundMethod.
	self showPackages ifFalse: [
		classesSelection removeAll.
		classesSelection at: class put: true ].
	self updateBothView.
	self update.
	self changed: #sourceCode