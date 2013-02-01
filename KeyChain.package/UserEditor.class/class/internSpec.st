specs
internSpec
	<spec>
	| imageHeight |
	imageHeight := 140.
	
	^{#ComposableSpec.
			#add:. {	{#model. #avatar}.
							#layout:. { 0.5 . 0  . 0.5 . 0 . (-60) . 0  . 60 . imageHeight }}.
			#add:. {	{#model. #userName }.
							#layout:. { 0 . 0  . 1 . 0 . 0 . imageHeight  . (-100) . (imageHeight+25) }}.
			#add:. {	{#model. #setPassword }.
							#layout:. { 1 . 0  . 1 . 0 . (-100) . imageHeight  . 0 . (imageHeight+25) }}.
			#add:. {	{#model. #gravatarAddress }.
							#layout:. { 0 . 0  . 1 . 0 . 0 . (25+imageHeight)  . (-100) . (imageHeight+50) }}.
			#add:. {	{#model. #testGravatar }.
							#layout:. { 1 . 0  . 1 . 0 . (-100) . (imageHeight+25)  . 0 . (imageHeight+50) }}.
							
			#add:. {	{#model. #editPublic }.
							#layout:. { 0 . 0  . 0.33 . 0 . 0 . (50+imageHeight)  . 0 . (imageHeight+75) }}.
			#add:. {	{#model. #editPrivate }.
							#layout:. { 0.33 . 0  . 0.66 . 0 . 0 . (imageHeight+50)  . 0 . (imageHeight+75) }}.
			#add:. {	{#model. #editPermissions }.
							#layout:. { 0.66 . 0  . 1 . 0 . 0 . (imageHeight+50)  . 0 . (imageHeight+75) }}}