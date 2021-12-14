pipeline{
    agent any
     tools{
            maven "MAVEN_HOME"
        }
    stages{
        stage('Clean'){
            steps{
                    bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }
    }
}