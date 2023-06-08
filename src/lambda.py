import logging
import os
import boto3

logger = logging.getLogger()
logger.setLevel(logging.INFO)

def stop_instance(instance_ids):
    ec2 = boto3.client('ec2', region_name=region)
    ec2.stop_instances(InstanceIds=instance_ids)
    logger.info(f'Instace(s) stopped')

def lambda_handler(event, context):

    logger.info(f'event info -: {event}')

    global region
    region = 'eu-west-1'

    global instance_id
    instance_id = os.getenv('instance_id')

    stop_instance([instance_id])

    return {
        'statusCode' : 200,
    }