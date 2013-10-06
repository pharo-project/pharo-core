primIndex: index toLine: line x: x trailing: anBooleanInt
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	self pangoNbCall: #(void                pango_layout_index_to_line_x        (self,
                                                         int index,
                                                         int anBooleanInt,
                                                         int *line,
                                                         int *x)).
