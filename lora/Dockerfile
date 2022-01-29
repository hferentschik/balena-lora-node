FROM balenalib/raspberrypi3-64-python:3-buster

RUN apt-get update \
 && apt-get install -y vim build-essential gcc git openssh-server
#  && apt-get clean \
#  && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd \
 && echo 'root:balena' | chpasswd \
 && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
 && sed -i 's/UsePAM yes/UsePAM no/' /etc/ssh/sshd_config

WORKDIR /app

RUN git clone https://github.com/rm-hull/spidev-test \
 && cd spidev-test \
 && gcc spidev_test.c -o spidev_test \
 && cd ..

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY dragino/ dragino/
COPY dragino.toml .
COPY test.py .
COPY test_downlink.py .
COPY testMAC.py .
COPY start.sh .

CMD ./start.sh
