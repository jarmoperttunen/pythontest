pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'echo "Hello Uni"'
 		sh '''
                    echo "Multiline shell steps works too"
		    pwd
		    cd /home
                    ls -lah
		    robot ./robot/valid_login.robot
                '''
            }
        }
    }
}


