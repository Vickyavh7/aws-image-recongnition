# aws-image-recongnition

Machine Learning-Powered Image Recognition and Analysis
AWS, Terraform, Amazon Rekognition, Lambda, S3, DynamoDB, SageMaker

Description: Developed and deployed a cloud-based image recognition and analysis solution leveraging AWS services, fully automated using Terraform.

Key Contributions:

Infrastructure as Code:
Designed and implemented the entire cloud infrastructure using Terraform, enabling reproducible and scalable deployments.
AWS Integration:
Utilized Amazon Rekognition for accurate image analysis and object detection.
Configured Amazon S3 for efficient image storage with automated image processing via Lambda triggers.
Deployed Amazon DynamoDB to store metadata and analysis results, optimizing database read/write operations to stay within Free Tier limits.
Serverless Architecture:
Implemented serverless functions using AWS Lambda for image preprocessing and result handling, ensuring efficient and cost-effective processing.
Cost Optimization:
Fine-tuned the project to remain within AWS Free Tier constraints by optimizing image sizes, minimizing processing time, and batching API calls.
Optional Complexity Handling:
Integrated Amazon SageMaker for potential complex ML model deployments, with cost considerations to avoid exceeding Free Tier usage.
Technologies Used:

Tools: Terraform, AWS CLI, Git
Services: Amazon Rekognition, Amazon S3, AWS Lambda, Amazon DynamoDB, Amazon SageMaker
Programming Languages: Python (for Lambda functions)
Outcome:

Successfully created a fully automated image recognition pipeline that processes and analyzes images, all within AWS Free Tier limits.
Demonstrated the ability to build scalable and cost-effective solutions using AWS and Terraform.

