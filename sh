pipeline{
    agent any
    stages{
      stage("SH"){
            steps{
                script{
                    //Imprimiendo cual es mi SO
                    sh "cat /etc/os-release"

                    //Descargando e imprimiendo el Jenknsfile
                    sh "wget -nc https://raw.githubusercontent.com/MartiMarch/formacion-jenkins-groovy/master/Jenkinsfile"
                    def output = sh (returnStdout: true, script: "cat Jenkinsfile")
                    echo "${ output }"
                }
            }
        }
    }
}
