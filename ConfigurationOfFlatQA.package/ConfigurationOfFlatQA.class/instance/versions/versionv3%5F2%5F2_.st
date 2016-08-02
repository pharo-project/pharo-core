versionv3_2_2: spec
<version: 'v3.2.2'>
spec for: #common do: [
spec blessing: #release;
repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/ScrapYard/main/'.
spec
	package: 'Renraku' with: 'Renraku-YuriyTymchuk.128';
	package: 'Renraku-Test' with: 'Renraku-Test-YuriyTymchuk.21';
	package: 'Renraku-Help' with: 'Renraku-Help-YuriyTymchuk.2';
	package: 'QualityAssistant' with: 'QualityAssistant-YuriyTymchuk.107';
	package: 'QualityAssistantRecording' with: 'QualityAssistantRecording-YuriyTymchuk.24';
	package: 'QualityAssistant-Test' with: 'QualityAssistant-Test-YuriyTymchuk.2'.
spec postLoadDoIt: #postload ]