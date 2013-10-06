findMethod
	"Pop up a list of the current class's methods, and select the one chosen by the user"

	| aClass selectors reply cat messageCatIndex messageIndex choices |
	self classListIndex = 0 ifTrue: [^ self].
	self okToChange ifFalse: [^ self].
	aClass := self selectedClassOrMetaClass.
	selectors := aClass selectors sort.
	selectors isEmpty ifTrue: [self inform: aClass name, ' has no methods.' translated. ^ self].
	choices := (Array with: 'Enter Wildcard' translated), selectors.
	reply := UIManager default chooseFrom: choices lines: #(1).
	reply = 0 ifTrue: [^self].
	reply = 1
		ifTrue: [
			reply := UIManager default request: 'Enter partial method name:' translated.
			(reply isNil or: [reply isEmpty])
				ifTrue: [^self].
			(reply includes: $*)
				ifFalse: [reply := '*', reply, '*'].
			selectors := selectors select: [:each | reply match: each].
			selectors isEmpty ifTrue: [self inform: aClass name, ' has no matching methods.' translated. ^ self].
			reply := selectors size = 1
				ifTrue: [selectors first]
				ifFalse: [	UIManager default chooseFrom: selectors values: selectors].
			reply isNil ifTrue: [^self]]
		ifFalse: [reply := choices at: reply].

	cat := aClass whichCategoryIncludesSelector: reply.
	messageCatIndex := self messageCategoryList indexOf: cat.
	self messageCategoryListIndex: messageCatIndex.
	messageIndex := (self messageList indexOf: reply).
	self messageListIndex: messageIndex