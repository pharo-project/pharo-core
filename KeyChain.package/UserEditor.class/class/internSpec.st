specs
internSpec
	<spec>
	| imageHeight |
	imageHeight := 140.
	
	^{#ComposableSpec.
			#add:. {	{#model. #avatar}.
							#layout:. {#FrameLayout. #fractions:offsets:. (0.5@0 corner: 0.5@0). ((-60)@0 corner: 60@imageHeight) }}.
			#add:. {	{#model. #userName }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 1@0). (0@imageHeight corner: (-100)@(imageHeight+25)) }}.
			#add:. {	{#model. #setPassword }.
							#layout:. {#FrameLayout. #fractions:offsets:. (1@0 corner: 1@0). ((-100)@imageHeight corner: 0@(imageHeight+25)) }}.
			#add:. {	{#model. #gravatarAddress }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 1@0). (0@(25+imageHeight) corner: (-100)@(imageHeight+50)) }}.
			#add:. {	{#model. #testGravatar }.
							#layout:. {#FrameLayout. #fractions:offsets:. (1@0 corner: 1@0). ((-100)@(imageHeight+25) corner: 0@(imageHeight+50)) }}.
							
			#add:. {	{#model. #editPublic }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0@0 corner: 0.33@0). (0@(50+imageHeight) corner: 0@(imageHeight+75)) }}.
			#add:. {	{#model. #editPrivate }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0.33@0 corner: 0.66@0). (0@(imageHeight+50) corner: 0@(imageHeight+75)) }}.
			#add:. {	{#model. #editPermissions }.
							#layout:. {#FrameLayout. #fractions:offsets:. (0.66@0 corner: 1@0). (0@(imageHeight+50) corner: 0@(imageHeight+75)) }}}