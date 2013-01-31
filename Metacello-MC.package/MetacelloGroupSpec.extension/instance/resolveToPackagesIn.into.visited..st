*metacello-mc
resolveToPackagesIn: aVersionSpec into: packages visited: visited

	visited 
		visit: self 
		doing: [:aSpec | | map |
			map := aVersionSpec packages map.
			aSpec includes do: [:pkgName | 
				(aVersionSpec packageNamed: pkgName forMap: map ifAbsent: [])
					projectDo: [:ignored | ] 
					packageDo: [:pkg | packages at: pkg name put: pkg ] 
					groupDo: [:grp | grp resolveToPackagesIn: aVersionSpec into: packages visited: visited ]]]