pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo $PATH'
 		sh '''
		    geckodriver --help
		    whereis firefox
                    pwd
		    export XAUTHORITY=/run/user/1000/gdm/Xauthority
		    echo $XAUTHORITY
		    echo $DISPLAY
		    export DISPLAY=localhost:99
		    echo $DISPLAY
		    robot ./robot/valid_login.robot            		    
		   '''
            }
        }
    }
}


