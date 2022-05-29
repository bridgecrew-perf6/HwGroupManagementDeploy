FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/hackerworldyt/SiestaRobot.git /root/SiestaRobot
#working directory 
WORKDIR /root/SiestaRobot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/VeezMusic/bin:$PATH"

CMD ["python3","-m","SiestaRobot"]
