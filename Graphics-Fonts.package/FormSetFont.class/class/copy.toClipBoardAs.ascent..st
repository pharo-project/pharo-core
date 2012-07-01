examples
copy: charForm toClipBoardAs: char ascent: ascent
	Clipboard clipboardText:
		(Text string: char asString
			attribute: (TextFontReference toFont: 
				(FormSetFont new
					fromFormArray: (Array with: charForm)
					asciiStart: char asciiValue
					ascent: ascent)))
"
	The S in the Squeak welcome window was installed by doing the following
	in a workspace (where the value of, eg, charForm will persist through BitEdit...
	f := TextStyle default fontAt: 4.
	oldS := f characterFormAt: $S.
	charForm := Form extent: oldS extent depth: 8.
	oldS displayOn: charForm.
	charForm bitEdit.
	...Play around with the BitEditor, then accept and close...
	FormSetFont copy: charForm toClipBoardAs: $S ascent: f ascent.
	...Then do a paste into the Welcome window
"