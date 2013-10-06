initMmapFlags

	"From <bits/mman.h>"

	" Memory protection flags, can be bitored "	
		
	PROT_READ := 16r1.	" Page can be read.  "
	PROT_WRITE := 16r2.	" Page can be written. "
	PROT_EXEC := 16r4.	" Page can be executed. "
	PROT_NONE := 16r0. 	" Page can not be accessed. "

	PROT_GROWSDOWN  := 16r01000000. " Extend change to start of growsdown vma (mprotect only). "
	PROT_GROWSUP := 16r02000000. "Extend change to start of growsup vma (mprotect only). "

	
	" Sharing types (must choose one and only one of these). "
	MAP_SHARED := 16r01.		"Share changes."
	MAP_PRIVATE := 16r02.		"Changes are private."
	
	MAP_TYPE := 16r0f. 	"Mask for type of mapping. "

	" Other flags. "
	MAP_FIXED := 16r10.	"Interpret addr exactly. "

	MAP_FILE := 0.
	MAP_ANONYMOUS := 16r20. "Don't use a file."
	MAP_ANON := MAP_ANONYMOUS.
	MAP_32BIT := 16r40.	"Only give out 32-bit addresses."

	"These are Linux-specific."

	MAP_GROWSDOWN := 16r00100.	"Stack-like segment."
	MAP_DENYWRITE := 16r00800.		" ETXTBSY "
	MAP_EXECUTABLE := 16r01000.	" Mark it as an executable."
	MAP_LOCKED := 16r02000. 		" Lock the mapping. "
	MAP_NORESERVE := 16r04000.		" Don't check for reservations. "
	MAP_POPULATE := 16r08000.		" Populate (prefault) pagetables. "
	MAP_NONBLOCK := 16r10000.		" Do not block on IO."
	MAP_STACK := 16r20000.			" Allocation is for a stack. "

	MAP_FAILED := 16rFFFFFFFF.  "-1"