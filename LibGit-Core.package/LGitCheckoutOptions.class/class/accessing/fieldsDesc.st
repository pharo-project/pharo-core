fieldsDesc
	^#(
		LGitOptionsVersionsEnum version;

		uint checkout_strategy; "< default will be a dry run "

		int disable_filters;    "< don't apply filters like CRLF conversion "
		uint dir_mode;  "< default is 0755 "
		uint file_mode; "< default is 0644 or 0755 as dictated by blob "
		int file_open_flags;    "< default is O_CREAT | O_TRUNC | O_WRONLY "

		uint notify_flags; "< see `git_checkout_notify_t` above "
		LGitCheckoutNotifyCallback notify_cb;
		void *notify_payload;

		" Optional callback to notify the consumer of checkout progress. "
		LGitCheckoutProgressCallback progress_cb;
		void *progress_payload;

		" When not zeroed out, array of fnmatch patterns specifying which
		 *  paths should be taken into account, otherwise all files.  Use
		 *  GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH to treat as simple list.
		 "
		LGitStringArray paths;

		" The expected content of the working directory; defaults to HEAD.
		 *  If the working directory does not match this baseline information,
		 *  that will produce a checkout conflict.
		 "
		LGitTree *baseline;

		" Like `baseline` above, though expressed as an index.  This
		 *  option overrides `baseline`.
		 "
		LGitIndex *baseline_index; "< expected content of workdir, expressed as an index. "

		String target_directory; "< alternative checkout path to workdir "

		String ancestor_label; "< the name of the common ancestor side of conflicts "
		String our_label; "< the name of the *our* side of conflicts "
		String their_label; "< the name of the *their* side of conflicts "

		" Optional callback to notify the consumer of performance data. "
		LGitCheckoutPerfDataCallback perfdata_cb;
		void *perfdata_payload;
	)