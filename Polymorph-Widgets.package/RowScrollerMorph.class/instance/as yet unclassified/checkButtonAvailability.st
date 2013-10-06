checkButtonAvailability
	"Check whether the buttons should be visible."

	|currentIndex leftmostIndex leftVisible rightVisible|
	currentIndex := self currentMorphIndex.
	leftVisible := currentIndex ~= 1.
	self leftButton
		disableTableLayout: leftVisible not;
		visible: leftVisible.
	rightVisible := self scroller localSubmorphBounds right - self scroller offset x > self scroller width.
	self rightButton
		disableTableLayout: rightVisible not;
		visible: rightVisible.
	leftmostIndex := self leftmostFitableMorphIndex.
	(leftmostIndex > 0 and: [currentIndex >= leftmostIndex]) ifTrue: [
		self scroller offset: (self targetMorphs at: leftmostIndex) left@0]