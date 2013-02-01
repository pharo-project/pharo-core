initialization
registerBase: base class: regClass values: names

	| val |
	val := base.
	names do: [ :regName | | reg |
		reg := regClass code: val name: regName.
		self classPool at: regName put: reg. 
		Codes at: val put: regName.
		val := val + 1].
