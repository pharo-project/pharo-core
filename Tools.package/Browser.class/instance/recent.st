class list
recent
	"Let the user select from a list of recently visited classes.  11/96 stp.
	 12/96 di:  use class name, not classes themselves.
	 : dont fall into debugger in empty case"

	| className class recentList |
	recentList := RecentClasses select: [ :n | Smalltalk globals includesKey: n ].
	recentList size = 0
		ifTrue: [ ^ Beeper beep ].
	className := UIManager default chooseFrom: recentList values: recentList.
	className isNil
		ifTrue: [ ^ self ].
	class := Smalltalk globals at: className.
	self selectCategoryForClass: class.
	self classListIndex: (self classList indexOf: class name)