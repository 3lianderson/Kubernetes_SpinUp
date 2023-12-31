FROM ubuntu:20.04
RUN apt update && apt upgrade -y
RUN apt-get install python3 python3-pip python3-boto ansible wget unzip -y 
RUN pip install boto3
RUN pip install boto
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata 
RUN apt update && apt-get install -y gnupg software-properties-common
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list 
RUN apt update
RUN apt-get install terraform -y