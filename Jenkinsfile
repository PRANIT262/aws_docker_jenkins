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

sh './mvnw clean package -DskipTests=true'

}

post{

always{

archiveArtifacts 'target/*.jar'

}

}

}

stage('DockerBuild') {

steps {

sh 'docker build -t pranit262/aws-d-j:latest .'

}

}

stage('Login') {

steps {

sh 'echo Pr@nit1905 | docker login -u pranit262 --password-stdin'

}

}

stage('Push') {

steps {

sh 'docker push pranit262/aws-d-j:latest'

}

}

}

post {

always {

sh 'docker logout'

}

}

}

