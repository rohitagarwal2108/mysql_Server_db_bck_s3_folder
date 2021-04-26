#!/bin/bash
passwd=$1

mysqldump -u root -p$passwd --all-databases > abc.sql
echo "all databases got backed up in abc.sql file"
#aws s3 mb s3://mysql-bckup-rohit --region us-east-1
#echo "s3://mysql-bckup-rohit bucket got created"
aws s3 cp abc.sql s3://mysql-bckup-rohit
echo "abc.sql file is copied to s3 bucket -- s3://mysql-bckup-rohit"