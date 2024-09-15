import json
import boto3
import os

rekognition = boto3.client('rekognition')
dynamodb = boto3.client('dynamodb')
s3 = boto3.client('s3')

DYNAMODB_TABLE = os.environ['DYNAMODB_TABLE']
S3_BUCKET = os.environ['S3_BUCKET']

def lambda_handler(event, context):
    for record in event['Records']:
        # Get the image from S3
        bucket = record['s3']['bucket']['name']
        key = record['s3']['object']['key']
        
        # Call Rekognition
        response = rekognition.detect_labels(
            Image={'S3Object': {'Bucket': bucket, 'Name': key}},
            MaxLabels=10
        )
        
        # Parse Rekognition response
        labels = [label['Name'] for label in response['Labels']]
        
        # Save result to DynamoDB
        dynamodb.put_item(
            TableName=DYNAMODB_TABLE,
            Item={
                'image_id': {'S': key},
                'labels': {'S': json.dumps(labels)}
            }
        )
        
    return {
        'statusCode': 200,
        'body': json.dumps('Image processed successfully!')
    }
