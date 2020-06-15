FROM amd64/openjdk:8u252-jdk-buster

COPY hadoop /hadoop

CMD /usr/local/openjdk-8/bin/java -Dproc_nodemanager -Xmx1000m -Dyarn.id.str=hadoop -Djava.library.path=/hadoop/lib/native -Dyarn.policy.file=hadoop-policy.xml -server -Dyarn.home.dir=/hadoop -Dhadoop.home.dir=/hadoop -Dhadoop.root.logger=INFO,RFA -Dyarn.root.logger=INFO,RFA -Djava.library.path=/hadoop/lib/native -classpath /hadoop/etc/hadoop:/hadoop/etc/hadoop:/hadoop/etc/hadoop:/hadoop/share/hadoop/common/lib/*:/hadoop/share/hadoop/common/*:/hadoop/share/hadoop/hdfs:/hadoop/share/hadoop/hdfs/lib/*:/hadoop/share/hadoop/hdfs/*:/hadoop/share/hadoop/yarn/lib/*:/hadoop/share/hadoop/yarn/*:/hadoop/share/hadoop/mapreduce/lib/*:/hadoop/share/hadoop/mapreduce/*:/contrib/capacity-scheduler/*.jar:/contrib/capacity-scheduler/*.jar:/hadoop/share/hadoop/yarn/*:/hadoop/share/hadoop/yarn/lib/*:/hadoop/etc/hadoop/nm-config/log4j.properties org.apache.hadoop.yarn.server.nodemanager.NodeManager
