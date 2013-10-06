reshapeFrom: oldScope to: newParentLayout
	"Bits layout do not have slots and thus no scopes we can directly return the new layout"
	^ self copy