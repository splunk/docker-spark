#!/bin/sh

echo "spark.eventLog.dir file://${SPARK_HOME}/logs
spark.history.fs.logDirectory file://${SPARK_HOME}/logs
" > $SPARK_HOME/conf/spark-defaults.conf

if [ "x$SPLUNK_ROLE" = "xsplunk_spark_master" ]
then

    echo "Starting spark master"
    /opt/spark/sbin/start-master.sh

else

    echo "Starting spark worker"
    /opt/spark/sbin/start-slave.sh spark://$SPARK_MASTER_HOSTNAME:$SPARK_MASTER_PORT

fi
