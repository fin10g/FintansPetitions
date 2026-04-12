pipeline {
    agent any

    stages {
        stage ('GetProject'){
            steps {
                git 'https://github.com/fin10g/FintansPetitions.git'
            }
        }
        stage ('Build') {
            steps {
                sh 'mvn clean:clean'
                sh 'mvn dependency:copy-dependencies'
                sh 'mvn compiler:compile'
            }
        }
        stage ('Test') {
            steps{
                sh 'mvn test'
            }
        }
        stage ('Package') {
            steps {
                sh 'mvn package'
            }
        }
        stage ('Archive') {
            steps {
                archiveArtifacts allowEmptyArchive: true,
                    artifacts: '**/fintanspetitions.war'
            }
        }
        stage ('Deploy'){
            steps {
                sh 'docker build -f Dockerfile -t fintanspetitions .'
                sh 'docker rm -f fintanspcontainer || true'
                sh 'docker run --name fintanspcontainer -p 9090:8080 --detach fintanspetitions:latest'
            }
        }
    }
}