calculateChildren
	^ Array
		withAll:
			((dataSource childrenBlock cull: data cull: (dataSource rootsItems collect: #data) cull: self depth)
				collect: [ :elem | 
					(self class data: elem from: dataSource)
						depth: self depth + 1;
						yourself ])