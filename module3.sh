#!/bin/bash

			#######Command to Create an AMI####### 

#aws ec2 create-image --instance-id (ID of my running instance) --name "My server" --no-reboot


	######Command to create launch configuration and attach S3 bucket specific role#######

#aws autoscaling create-launch-configuration --launch-configuration-name my-launch-config --image-id (AMI id i need to use) --security-groups (Security group need to attach) --instance-type t2.micro --iam-instance-profile (Need to define role)


		#######Command to create ASG using AMI created above######

#aws autoscaling create-auto-scaling-group --auto-scaling-group-name my-auto-scaling-group --launch-configuration-name (Need to call launch-configuration name ) --load-balancer-names (Need to call running load balancer name) --health-check-type ELB --health-check-grace-period 120


		#######Command to create ALB rule for path base routing ##############

#aws elbv2 create-rule --listener-arn listener-arn --priority 10 --conditions Field=path-pattern,Values='/img1/*' --actions Type=forward,TargetGroupArn=targetgroup-arn

#aws elbv2 create-rule --listener-arn listener-arn --priority 10 --conditions Field=path-pattern,Values='/imgi2/*' --actions Type=forward,TargetGroupArn=targetgroup-arn
