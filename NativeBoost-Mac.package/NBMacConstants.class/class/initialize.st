as yet unclassified
initialize

	RTLD_LAZY := 16r1.
	RTLD_NOW := 16r2.
	RTLD_LOCAL := 16r4.
	RTLD_GLOBAL := 16r8.
	
	RTLD_NOLOAD := 16r10.
	RTLD_NODELETE := 16r80.
	RTLD_FIRST := 16r100.  " Mac OS X 10.5 and later "
	

	RTLD_NEXT := -1 . " ((void *) -1) Search subsequent objects. "
	RTLD_DEFAULT := -2. " ((void *) -2) Use default search algorithm. "
	RTLD_SELF := -3. " ((void *) -3)  Search this and subsequent objects (Mac OS X 10.5 and later) "
	RTLD_MAIN_ONLY := -5. " ((void *) -5)  Search main executable only (Mac OS X 10.5 and later)"

	self initMmapflags.
	