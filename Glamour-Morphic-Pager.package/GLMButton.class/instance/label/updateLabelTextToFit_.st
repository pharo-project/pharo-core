updateLabelTextToFit: width
	|index text|
	"cuts displayed label text to fit passed width"
	
	(self measureWidth <= width) & (self measureWidth <= self width) ifTrue: [
		^ self
	].

	(self measureWidth <= width) ifTrue: [ 
		self label text: self label text.
	].
	
	text := self label text.
	index := text size.
	[ ((self measureLabelWidthFor: text) > width) & (index > 1) ] whileTrue: [
		text := (self label text copyReplaceFrom: index
		to: self label text size with: '...').
		index := index - 1.
	].
	
	self setLabelText: text.
	self updateExtent.