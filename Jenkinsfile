pipeline{
    agent any
    options {
        timestamps()
    }
    stages{
        stage("Cloning Repository"){
            steps{
                git ''
            }
        }
        stage("Provisioning Vault"){
            steps{
                sh 'ansible-playbook playbook.yml'
            }
        }
        stage("Running Vault"){
            steps{
                sh 'export VAULT_ADDR=\'http://127.0.0.1:8200\''
                sh 'vault server -dev'
            }
        }
    }
}