curl -i -X POST -H  'Content-Type: application/json' -d '
{ 
    "email": "hilllo123", 
    "password": "pass"
}' http://ec2-18-219-123-254.us-east-2.compute.amazonaws.com/auth

# testing if email is unique
curl -i -X POST -H http://ec2-18-219-123-254.us-east-2.compute.amazonaws.com/auth 'Content-Type: application/json' -d '
{ 
    "email": "hilllo", 
    "password": "pass"
}' 

# test if password can contain any characteer and if it is allowed
curl -i -X POST -H http://ec2-18-219-123-254.us-east-2.compute.amazonaws.com/auth 'Content-Type: application/json' -d '
{ 
    "email": "hellous", 
    "password": "pass@+?"
}' 