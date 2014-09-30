positionLabel

	labelMorph ifNil: [ ^ self ].

	self label position == #center ifTrue: [
		labelMorph position: self center - (labelMorph extent // 2)
	].

	self label position == #leftCenter ifTrue: [
		labelMorph position: self leftCenter - (0@(labelMorph height // 2)) + (self geometry paddingLeft @ 0)
	].

	self label position == #rightCenter ifTrue: [ 
		labelMorph position: self rightCenter - (labelMorph width@(labelMorph height // 2)) - (self geometry paddingRight @ 0)
	].

	self label position == #leftTop ifTrue: [
		labelMorph position: self topLeft + (self geometry paddingLeft @ self geometry paddingTop)
	].

	self label position == #rightTop ifTrue: [ 
		labelMorph position: self topRight - (labelMorph width@0) - (self geometry paddingRight @ (self geometry paddingTop * (-1)))
	].

	self label position == #leftBottom ifTrue: [ 
		labelMorph position: self bottomLeft - (0@labelMorph height) + (self geometry paddingLeft @ (self geometry paddingBottom  * (-1)))
	].

	self label position == #rightBottom ifTrue: [ 
		labelMorph position: self bottomRight - (labelMorph width@labelMorph height) - (self geometry paddingRight @ self geometry paddingBottom )
	].