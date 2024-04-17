pipeline {
    agent any

    environment {
        GIT_AUTHOR = ""
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                // Obtém o autor do commit mais recente
                script {
                    def author = sh(script: "git log -1 --pretty=format:'%ae'", returnStdout: true).trim()
                    env.GIT_AUTHOR = author
                }
            }
        }

        stage('Build') {
            steps {
                // Código de construção aqui
                sh "echo Teste de build"
            }
        }

        stage('Test') {
            steps {
                // Código de teste aqui
                sh "exit 1"
            }
        }
    }

    post {
        failure {
            script {
                // Configura as credenciais SMTP
                emailext (
                    subject: "Falha no Job: ${env.JOB_NAME}",
                    body: """\
                    Olá,

                    O job ${env.JOB_NAME} falhou no build ${env.BUILD_NUMBER}.
                    Consulte o console de saída para mais detalhes.

                    Obrigado,
                    Jenkins
                    """,
                    to: env.GIT_AUTHOR,
                    replyTo: 'seu-email@dominio.com'
                )
            }
        }
    }
}
