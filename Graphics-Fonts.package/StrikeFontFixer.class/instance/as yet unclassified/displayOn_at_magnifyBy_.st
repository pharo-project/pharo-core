displayOn: aDisplayObject at: aPoint magnifyBy: aNumber

	| form hStep vStep bb source nextPoint |
	hStep := (strikeFont maxWidth * aNumber * 1.2) asInteger.
	vStep := (strikeFont height * aNumber *  1.2) asInteger.
	
	form := Form extent: (hStep * 16)@(vStep * 16).
	bb := BitBlt toForm: form.
	0 to: 15 do: [:i |
		1 to: 16 do: [:j |
			source := ((charForms at: (i * 16 + j)) magnifyBy: aNumber).
			nextPoint := (hStep * (j - 1)@(vStep * i)).
			bb copy: ((nextPoint+((hStep@vStep - source extent) // 2)) extent: source extent)
				from: 0@0 in: source fillColor: Color black rule: Form over.
		].
	].
	form displayOn: aDisplayObject at: aPoint.
