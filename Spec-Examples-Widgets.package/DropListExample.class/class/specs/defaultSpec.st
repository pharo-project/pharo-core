defaultSpec

	^ { #ComposableSpec.
			#add:.	{ self topSpec . #layout: . #(FrameLayout
													bottomFraction: 0
													bottomOffset: 30) }.
			#add:.	{{#model . #container } . #layout: .  #(FrameLayout
													topOffset: 42). }}