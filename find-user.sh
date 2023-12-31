#!/bin/bash
# List all instances for all AWS accounts that we have credentials for

clear
printf "Query all AWS accounts in the credentials file for their instances\n"
for profile in `cat ~/.aws/credentials | grep -F [ | sort | sed s/[][]//g`
do
  printf "querying: "$profile  "  "
  aws ec2 describe-instances --profile $profile > ~/recon/instances_$profile.json
  printf "  (Output: ~/recon/instances_"$profile".json)\n"
done
printf "Done\n\n"
