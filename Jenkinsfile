pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('yashmahi04/my-web-app:latest')
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    docker.image('yashmahi04/my-web-app:latest').inside {
                        sh 'npm test'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-cred') {
                        docker.image('yashmahi04/my-web-app:latest').push('latest')
                    }
                }
            }
        }
    }
}
