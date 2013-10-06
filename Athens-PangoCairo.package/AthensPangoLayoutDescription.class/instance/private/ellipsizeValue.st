ellipsizeValue
	^ellipsize caseOf:{
	['none'] -> [PANGO_ELLIPSIZE_NONE].
  	['start']->[PANGO_ELLIPSIZE_START].
  	['middle']->[PANGO_ELLIPSIZE_MIDDLE].
	['end']->[ PANGO_ELLIPSIZE_END].
	}