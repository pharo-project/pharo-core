internSpec
	<spec>
	| imageHeight |
	imageHeight := 140.
	
	^{#ComposableSpec.
			#add:. {	{#model. #avatar}.
							#layout:.{#FrameLayout.
											#leftFraction:. 0.5 .
											#rightFraction:. 0.5 .
											#bottomFraction:.  0 .
											#leftOffset:.  (-60) .
											#rightOffset:.  60 .
											#bottomOffset:.  imageHeight .}}.
			#add:. {	{#model. #userName }.
							#layout:.{#FrameLayout.
											#bottomFraction:.  0 .
											#topOffset:.  imageHeight  .
											#rightOffset:.  (-100) .
											#bottomOffset:.  (imageHeight+25) .}}.
			#add:. {	{#model. #setPassword }.
							#layout:. {#FrameLayout.
											#leftFraction:.  1 .
											#bottomFraction:.  0 .
											#leftOffset:.  (-100) .
											#topOffset:.  imageHeight  .
											#bottomOffset:.  (imageHeight+25) .}}.
			#add:. {	{#model. #gravatarAddress }.
							#layout:. {#FrameLayout.
											#bottomFraction:.  0 .
											#topOffset:.  (25+imageHeight)  .
											#rightOffset:.  (-100) .
											#bottomOffset:.  (imageHeight+50) .}}.
			#add:. {	{#model. #testGravatar }.
							#layout:. {#FrameLayout.
											#leftFraction:.  1 .
											#bottomFraction:.  0 .
											#leftOffset:.  (-100) .
											#topOffset:.  (imageHeight+25)  .
											#bottomOffset:.  (imageHeight+50) .}}.
							
			#add:. {	{#model. #editPublic }.
							#layout:. {#FrameLayout.
											#rightFraction:.  0.33 .
											#bottomFraction:.  0 .
											#topOffset:.  (50+imageHeight)  .
											#bottomOffset:.  (imageHeight+75) .}}.
			#add:. {	{#model. #editPrivate }.
							#layout:. {#FrameLayout.
											#leftFraction:.  0.33 .
											#rightFraction:.  0.66 .
											#bottomFraction:.  0 .
											#topOffset:.  (imageHeight+50)  .
											#bottomOffset:.  (imageHeight+75) .}}.
			#add:. {	{#model. #editPermissions }.
							#layout:. {#FrameLayout.
											#leftFraction:.  0.66 .
											#bottomFraction:.  0 .
											#topOffset:.  (imageHeight+50)  .
											#bottomOffset:.  (imageHeight+75) .}}}