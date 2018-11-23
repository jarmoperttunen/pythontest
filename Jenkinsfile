pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo $PATH'
 		sh '''
		    chromedriver --help
		    whereis firefox
                    pwd
		    export XAUTHORITY=/run/user/1000/gdm/Xauthority
		    echo $XAUTHORITY
		    echo $DISPLAY
		    export DISPLAY=:0
		    echo $DISPLAY
		    robot ./robot/home_test.robot            		    
		   '''
            }
        }
    }
}


