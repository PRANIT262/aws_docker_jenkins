pipeline{
    agent any
	stages{
		stage('Checkout'){
			steps{
				git branch:"main", url:'https://github.com/PRANIT262/aws_docker_jenkins.git'
			}
		}
		stage('Build'){
			steps{
				sh 'chmod a+x mvnw'
				sh './mvnw clean package -DskipTest=true'
				}
				post{
					always{
						archiveArtifacts 'target/*.jar'
				}
			}	
		}

		stage(DockerBuild){
			steps{
				sh 'docker build -t pranit262/aws-d-j:latest .'
				}
			}
		}



}