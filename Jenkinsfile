pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/kaaz01/demo-jsp.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Deploy') {
            steps {
                sh 'pkill -f "demo.*war" || true'
                sh 'sleep 2'
                sh 'nohup java -jar target/demo-0.0.1-SNAPSHOT.war > app.log 2>&1 &'
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
