examples
example
	"FormSetFont example"
	"Lets the user select a (small) area of the screen to represent the
	character A, then copies 'A' to the clipboard with that as the letter form.
	Thereafter, a paste operation will imbed that character in any text."
	| charForm |
	charForm := Form fromUser.
	self 
		copy: charForm
		toClipBoardAs: $A
		ascent: charForm height