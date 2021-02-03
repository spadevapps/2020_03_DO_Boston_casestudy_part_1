// Powered by Infostretch 
//maybe install plugins

pipeline {

	agent any
	
	environment {
		docker_credentials = credentials('docker_credentials')
		docker_repo = 'https://hub.docker.com/repository/docker/spadevapps/sba.casestudy'
		git_repo = 'https://github.com/spadevapps/2020_03_DO_Boston_casestudy_part_1'
	}
	
	stages {
	

		stage (' Checkout') { 
			steps {
				script {
					sh 'rm -rf /https://github.com/spadevapps/2020_03_DO_Boston_casestudy_part_1'
					sh 'git clone https://github.com/spadevapps/2020_03_DO_Boston_casestudy_part_1'
				}
			}
		}
		stage ('Build') {
			steps {
				script {
				
				sh 'docker image build -t sba.casestudy .'
				sh 'docker image tag sba.casestudy  spadevapps/sba.casestudy:latest'
				withCredentials([ 
					usernamePassword(credentialsId: 'docker_credentials', usernameVariable: dockUsr, passwordVariable: dockPswd)
				]) {
					sh 'docker login -u "$dockUsr" -p "$dockPswd"'
					sh 'docker image push spadevapps/sba.casestudy:latest'
					}
				}
			}
 	
		}
		stage ('deploy') {
			steps {
				echo "kubernetes step"
				//sh 'kubectl apply -f kubernetes.yml '
				//ansible command? 
			}
 	
		}
		
	}
}

/*
docker image build -t sba.casestudy .
docker image tag sba.casestudy  spadevapps/sba.casestudy:v1
docker push spadevapps/sba.casestudy:v1

*/

//kubectl apply -f kubernetes.yml  
