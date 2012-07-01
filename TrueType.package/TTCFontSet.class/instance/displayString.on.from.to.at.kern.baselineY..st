displaying
displayString: aString on: aBitBlt from: startIndex to: stopIndex at: aPoint kern: kernDelta baselineY: baselineY

	| destPoint font form encoding glyphInfo char charCode destY |
	destPoint := aPoint.
	glyphInfo := Array new: 5.
	startIndex to: stopIndex do: [:charIndex |
		char := aString at: charIndex.
		encoding := char leadingChar + 1.
		charCode := char charCode.
		font := fontArray at: encoding.
		((charCode between: font minAscii and: font maxAscii) not) ifTrue: [
			charCode := font maxAscii].
		self glyphInfoOf: char into: glyphInfo.
		form := glyphInfo at: 1.
		(glyphInfo fifth ~= aBitBlt lastFont) ifTrue: [
			glyphInfo fifth installOn: aBitBlt.
		].
		destY := baselineY - glyphInfo fourth. 
		aBitBlt
			sourceForm: form;
			destX: destPoint x;
			destY: destY;
			sourceOrigin: 0 @ 0;
			width: form width;
			height: form height;
			copyBits.
		destPoint := destPoint x + (form width + kernDelta) @ destPoint y.
	].
	^ destPoint.
