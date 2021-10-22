# export TF_VAR_db_password=$1
# export PGAPASSWORD=$1     #the password for postgres user users can be fed via script parameters as well

terraform init

terraform apply -auto-approve

psql -h $(terraform output -raw rds_hostname) -p $(terraform output -raw rds_port) -U $(terraform output -raw rds_username) postgres -w << EOF

CREATE TABLE users (first_name varchar(80),last_name varchar(80),age int,date date);
EOF
