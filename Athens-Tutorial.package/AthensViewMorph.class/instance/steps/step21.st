step21
"Step 21: Pattern paints (bitmap paints).

"
	| formPaint  |

	formPaint := surface createFormPaint: Form fromUser. 
	formPaint noRepeat. "use #repeat to repeat the fill ad infinitum using tiling effect "
	
	surface drawDuring: [:canvas |
		surface clear: Color gray.
			
		canvas setPaint: formPaint.
		
		"And of course, using the paint transform we can affect the result"
		
		canvas paintTransform scaleBy: 4.
		canvas drawShape: (0@0 corner: surface extent).

	].
