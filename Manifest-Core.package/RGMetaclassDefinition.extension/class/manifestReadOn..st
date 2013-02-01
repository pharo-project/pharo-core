*Manifest-Core
manifestReadOn: aArray

	^ (self named:( aArray at:1))
		baseClass: ( aArray at:2)