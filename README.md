# ecommerce_dataTask

## AWS EC2 set up#
```bash
$ ssh -i ~/.ssh/aws-spark ec2-user@18.217.84.199
#change to a new instance on t2.large and expand disk volumes
df -h -> create volumes (no space left on disk).
$ ssh -i ~/.ssh/aws-spark ec2-user@18.220.204.50

$ sudo yum update
$ sudo yum install -y git
# $ sudo yum -y install python-pip
# install python3 and gcc
sudo yum install -y python3 libpq-dev python3-dev
sudo yum install -y gcc gcc-c++

# add following into ~/.bashrc
$ echo "export PATH=/usr/local/bin:$PATH" >> ~/.bashrc
$ echo "alias python=python3" >> ~/.bashrc
$ echo "alias pip=pip3" >> ~/.bashrc
$ source ~/.bashrc
```
## Docker Set up
```bash
# sudo amazon-linux-extras install docker
$ sudo yum -y install docker
$ sudo usermod -a -G docker ec2-user
$ sudo systemctl start docker
$ sudo systemctl status docker
$ sudo systemctl enable docker
$ sudo chmod 666 /var/run/docker.sock
# sudo service docker start

# Forwarding request to 'systemctl enable docker.service', => make Docker auto-start.
$ sudo chkconfig docker on
```

## docker-compose install
```bash
$ sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
$ docker-compose version
```

## Run 
```bash
$ docker-compose up
#
$ docker-compose down
```