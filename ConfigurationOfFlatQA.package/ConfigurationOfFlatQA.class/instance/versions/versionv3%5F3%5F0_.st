versionv3_3_0: spec
<version: 'v3.3.0'>
spec for: #common do: [
spec blessing: #release;
repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/ScrapYard/main/'.
spec
	package: 'Renraku' with: 'Renraku-YuriyTymchuk.147';
	package: 'Renraku-Test' with: 'Renraku-Test-YuriyTymchuk.23';
	package: 'Renraku-Help' with: 'Renraku-Help-YuriyTymchuk.3';
	package: 'QualityAssistant' with: 'QualityAssistant-YuriyTymchuk.118';
	package: 'QualityAssistantRecording' with: 'QualityAssistantRecording-Uko.28';
	package: 'QualityAssistant-Test' with: 'QualityAssistant-Test-YuriyTymchuk.2'.
spec postLoadDoIt: #postload ]