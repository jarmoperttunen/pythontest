pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo "Hello Uni"'
 		sh '''
                    echo "Multiline shell steps works too"
		    pwd
                    robot ./robot/valid_login.robot
		    
		   '''
            }
        }
    }
}


