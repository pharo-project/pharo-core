maxClassSize

	^ maxClassSize ifNil:[| elt stm |
			elt := (listModel getList detectMax: [:e | e methodClass name size + (cachedHierarchy at: e) size]).
			stm := String streamContents: [:t | 
				3 to: (cachedHierarchy at: elt) size do: [:i | t << '    '].
				t << elt methodClass name ].
			maxClassSize := StandardFonts listFont widthOfString: stm ].
