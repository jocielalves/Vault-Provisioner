pipeline{
    agent any
    options {
        timestamps()
    }
    stages{
        stage("Cloning "){
            steps{
                git 'https://github.com/jocielalves/Vault-Provisioner.git'
            }
        }
        stage("Provisioning "){
            steps{
                sh 'ansible-playbook playbook.yml'
            }
        }
        stage("Running "){
            steps{
                sh 'export VAULT_ADDR=\'http://127.0.0.1:8200\''
                sh 'vault server -dev'
            }
        }
    }
}