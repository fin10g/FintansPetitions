pipeline {
    agent any

    stages {
        stage ('GetProject'){
            steps {
                git 'https://github.com/fin10g/FintansPetitions.git'
            }
        }
        stage ('build') {
            steps {
                sh 'mvn clean:clean'
                sh 'mvn dependency:copy-dependencies'
                sh 'mvn compiler:compile'
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
                sh 'sudo -S docker build -f Dockerfile -t fintanspetitions .'
                sh 'sudo -S docker rm -f "fintanspcontainer" || true'
                sh 'sudo -S docker run --name "fintanspcontainer" -p 9090:8080 --detach fintanspetitions:latest'
            }
        }
    }
}