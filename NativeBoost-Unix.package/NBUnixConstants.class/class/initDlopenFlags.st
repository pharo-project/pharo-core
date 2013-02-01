as yet unclassified
initDlopenFlags

"From <bits/dlfcn.h>"

" The MODE argument to `dlopen' contains one of the following: "
	RTLD_LAZY	 := 16r00001. "Lazy function call binding."
	RTLD_NOW := 16r00002. " Immediate function call binding. "
	RTLD_BINDING_MASK := 16r3. " Mask of binding time value. "
	RTLD_NOLOAD	:= 16r00004. " Do not load the object."
	RTLD_DEEPBIND := 16r00008. " Use deep binding. "

" If the following bit is set in the MODE argument to `dlopen',
   the symbols of the loaded object and its dependencies are made
   visible as if the object were linked directly into the program.  "
	RTLD_GLOBAL := 16r00100.

" Unix98 demands the following flag which is the inverse to RTLD_GLOBAL.
   The implementation does this by default and so we can define the
   value to zero.  "
	RTLD_LOCAL := 0.

" Do not delete object when closed.  "
	RTLD_NODELETE := 16r01000.
	
" From <dlfcn.h> "
" If the first argument of `dlsym' or `dlvsym' is set to RTLD_NEXT
   the run-time address of the symbol called NAME in the next shared
   object is returned.  The 'next' relation is defined by the order
   the shared objects were loaded.  "
	RTLD_NEXT := 16rFFFFFFFF.  "  ((void *) -1l) "
   
" If the first argument to `dlsym' or `dlvsym' is set to RTLD_DEFAULT
   the run-time address of the symbol called NAME in the global scope
   is returned.  " 
	RTLD_DEFAULT := 0. 
   

