primLayoutX: anX Y: anY toIndex: index trailing: trailing
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(gboolean  pango_layout_xy_to_index (
			self,
			int anX,
			int anY,
			int* index,
			int* trailing ))