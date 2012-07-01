class functions
findMethodWithWildcard
	"Pop up a list of the current class's methods, and select the one chosen by the user"

	| aClass selectors reply cat messageCatIndex messageIndex |
	self classListIndex = 0 ifTrue: [^ self].
	self okToChange ifFalse: [^ self].
	aClass := self selectedClassOrMetaClass.
	selectors := aClass selectors sort.
	selectors isEmpty ifTrue: [self inform: aClass name, ' has no methods.' translated. ^ self].

	reply := UIManager default request: 'Enter partial method name:' translated.
	(reply isNil or: [reply isEmpty])
		ifTrue: [^self].
	(reply includes: $*)
		ifFalse: [reply := '*', reply, '*'].
	selectors := selectors select: [:each | reply match: each].
	selectors isEmpty ifTrue: [self inform: aClass name, ' has no matching methods.'. ^ self].
	reply := selectors size = 1
		ifTrue: [selectors first]
		ifFalse: [UIManager default chooseFrom: selectors values: selectors].
	reply == nil ifTrue: [^ self].

	cat := aClass whichCategoryIncludesSelector: reply.
	messageCatIndex := self messageCategoryList indexOf: cat.
	self messageCategoryListIndex: messageCatIndex.
	messageIndex := (self messageList indexOf: reply).
	self messageListIndex: messageIndex