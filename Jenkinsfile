pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo $PATH'
 		sh '''
		    robot ./robot/valid_login.robot
                    echo "Multiline shell steps works too"
		    pwd
		                      		    
		   '''
            }
        }
    }
}


