FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/hackerworldyt/LunaRobotV2.git /root/LunaRobotV2-master
#working directory 
WORKDIR /root/LunaRobotV2-master

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/VeezMusic/bin:$PATH"

CMD ["python3","-m","LunaRobotV2-master"]
