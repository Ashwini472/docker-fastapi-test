pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // This pulls your latest code from GitHub
                checkout scm
            }
        }

        stage('Deploy Services') {
            steps {
                // This starts your App, Prometheus, and Grafana using your docker-compose file
                // '-d' runs it in the background
                sh 'docker-compose up -d --build'
            }
        }

        stage('Verify') {
            steps {
                // Shows you the running containers in the Jenkins logs
                sh 'docker ps'
            }
        }
    }
}
