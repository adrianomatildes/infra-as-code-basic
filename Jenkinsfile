pipeline {
    agent any
    parameters {
        string(name: 'PLANET', defaultValue: 'Earth', description: 'Which planet are we on?')
        string(name: 'GREETING', defaultValue: 'Hello', description: 'How shall we greet?')
    }
    triggers {
        cron('15 14 * * *') // Agendar para as 14:12
    }
    stages {
        stage('Check Schedule') {
            steps {
                timeout(time: 24, unit: 'HOURS') {
                    script {
                        def now = new Date()
                        def calendar = Calendar.getInstance()
                        calendar.time = now
                        int hour = calendar.get(Calendar.HOUR_OF_DAY)
                        int minute = calendar.get(Calendar.MINUTE)

                        if (hour == 14 && minute == 15) {
                            echo "Scheduled time reached. Executing pipeline."
                        } else {
                            error "Pipeline execution aborted. Scheduled time not reached."
                        }
                    }
                }
            }
        }
        stage('Example') {
            steps {
                echo "${params.GREETING} ${params.PLANET}"
                script { currentBuild.description = "${params.GREETING} ${params.PLANET}" }
            }
        }
    }
}