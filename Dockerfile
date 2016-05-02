FROM isthari/hadoop-base:latest 

ENV JAVA_HOME /usr

RUN mkdir -p /hadoop/datanode 
RUN mkdir -p /hadoop/namenode

COPY hdfs-site.xml /root/hadoop/etc/hadoop/hdfs-site.xml
RUN cd root; ./hadoop/bin/hdfs namenode -format

CMD /root/hadoop/bin/hdfs namenode

