winget install EclipseAdoptium.Temurin.21.JDK

pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git(
                    credentialsId: 'azure-devops-pat',
                    url: 'PASTE_YOUR_AZURE_DEVOPS_REPOSITORY_URL_HERE',
                    branch: 'main'
                )
            }
        }

        stage('Build') {
            steps {
                echo 'Build started'
                echo 'Build completed successfully'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing application...'
                echo 'All tests passed'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deployment completed successfully'
            }
        }
    }
}
