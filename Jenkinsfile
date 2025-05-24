pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }
        stage('Debug Workspace') {
          steps {
             echo "Listing all files in workspace:"
             sh 'ls -al'
            }
        }

        stage('Build') {
          steps {
             echo 'Running build script..'
            // Option 1: chmod and run in one step
             sh 'chmod +x app.sh && ./app.sh'

           // OR Option 2: Run directly via shell without needing +x
           // sh 'bash app.sh'
           } 
        }


        stage('Test') {
            steps {
                echo 'Running test script...'
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
