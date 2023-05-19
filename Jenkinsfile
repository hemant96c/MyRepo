pipeline{
    agent any
    stages{
        stage("TF Init"){
            steps{
                echo "Executing Terraform Init"
                bat 'terraform init'
            }
        }
        stage("TF Validate"){
            steps{
                echo "Validating Terraform Code"
                bat 'terraform validate'
            }
        }
        stage("TF Plan"){
            steps{
                echo "Executing Terraform Plan"
                bat 'terraform plan'
            }
        }
        stage("TF Apply"){
            steps{
                echo "Executing Terraform Apply"
                bat 'terraform apply -auto-approve'
            }
        }
        stage('Configure AWS Credentials') {
            steps {
                    bat 'aws configure set aws_access_key_id AKIAQLHLZQSJ73YFUFR7'
                    bat 'aws configure set aws_secret_access_key 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'
                    bat 'aws configure set region ap-south-1'
            }
        }
        stage("Invoke Lambda"){
            steps{
                echo "Invoking your AWS Lambda"
                bat 'aws lambda invoke --function-name lambda --region ap-south-1 out.txt'
                bat 'cat out.txt'
            }
        }
    }
}
