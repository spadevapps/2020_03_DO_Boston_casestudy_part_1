// Powered by Infostretch 

timestamps {

node () {

	stage ('jenkinsSBA - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/spadevapps/sba.jenkins-github-pipeline.git']]]) 
	}
	stage ('jenkinsSBA - Build') {
		steps {
			powershell "py -m pip install -r requirements.txt"
			powershell "py web.py"
		}
 	
// Unable to convert a build step referring to "hudson.plugins.powershell.PowerShell". Please verify and convert manually if required. 
	}
}
}