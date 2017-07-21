packbuilder_foreach: pb cb: cb payload: payload
	
	^ self
		call:
			#(LGitReturnCodeEnum git_packbuilder_foreach #(self , LGitPackbuilderForeachCallback cb ,  void *payload))
		options: #(optMayGC optCoerceNilToNull)