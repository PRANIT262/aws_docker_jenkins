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

sh 'echo pranit262 | docker login -u Pr@nit1905 --password-stdin'

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

