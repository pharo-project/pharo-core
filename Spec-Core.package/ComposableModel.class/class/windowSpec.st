specs
windowSpec

	^ { #StandardWindow.
			#addMorphBack:.	{ self defaultSpec . #layout:. #(0  0  1  1  0  0  0 0) }.
			#title:.				self title}