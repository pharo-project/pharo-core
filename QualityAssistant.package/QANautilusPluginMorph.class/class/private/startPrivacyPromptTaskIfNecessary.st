startPrivacyPromptTaskIfNecessary

	privacyPrompTask ifNil: [ privacyPrompTask :=
		GLMAsyncTask new
			delay: 30000;
			onCompleted: [ self wasOpenedBefore: true ];
			execute ]