pipeline {
    agent any

    stages {
        stage('Obter Workspace') {
            steps {
                script {
                    // Obtém o valor da variável de ambiente WORKSPACE
                    def jenkinsWorkspace = env.JENKINS_WORKSPACE
                    echo "O diretório de trabalho do Jenkins é: ${jenkinsWorkspace}"
                }
            }
        }
    }
}