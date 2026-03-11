pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/YOUR_USERNAME/demo-jsp.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Deploy') {
            steps {
                bat 'taskkill /F /IM java.exe || exit /b 0'
                bat 'ping -n 3 127.0.0.1 > nul'
                bat 'start /B java -jar target\\demo-0.0.1-SNAPSHOT.war'
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Build or deployment failed.'
        }
    }
}
