as yet unclassified
initMmapflags

	PROT_READ := 16r1.	" Page can be read.  "
	PROT_WRITE := 16r2.	" Page can be written. "
	PROT_EXEC := 16r4.	" Page can be executed. "
	PROT_NONE := 16r0. 	" Page can not be accessed. "

	MAP_FILE := 0. " map from file (default) "
	MAP_ANON := 16r1000. " allocated from memory, swap space "
	
	" Flags contain sharing type and options.
 	Sharing types; choose one."
	
	MAP_SHARED := 16r0001. " [MF|SHM] share changes"
	MAP_PRIVATE := 16r0002. " [MF|SHM] changes are private"
	MAP_COPY  := MAP_PRIVATE.

	MAP_FIXED := 16r0010. " [MF|SHM] interpret addr exactly "
	
	MAP_RENAME := 16r0020. " Sun: rename private pages to file "
	MAP_NORESERVE := 16r0040. " Sun: don't reserve needed swap area "
	MAP_RESERVED0080 := 16r0080. " previously unimplemented MAP_INHERIT "
	MAP_NOEXTEND := 16r0100. " for MAP_FILE, don't change file size "
	MAP_HASSEMAPHORE := 16r0200. " region may contain semaphores "
	MAP_NOCACHE := 16r0400. " don't cache pages for this mapping "

	MAP_FAILED := -1 asImm asDWord.