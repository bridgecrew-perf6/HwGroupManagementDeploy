FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/hackerworldyt/LunaRobotV2.git /root/lunaBot
#working directory 
WORKDIR /root/lunaBot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/VeezMusic/bin:$PATH"

CMD ["python3","-m","lunaBot"]
