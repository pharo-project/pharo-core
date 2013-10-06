ellipsizeValueFrom: anInt 
	^anInt caseOf:{
	[PANGO_ELLIPSIZE_NONE]->['none'].
  	[PANGO_ELLIPSIZE_START]->['start'].
  	[PANGO_ELLIPSIZE_MIDDLE]->['middle'].
	[ PANGO_ELLIPSIZE_END]->['end'].
	}