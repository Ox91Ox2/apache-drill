#!/bin/bash
sed s/ZKCONNECT/"${ZOOKEEPER}"/g /opt/apache-drill/templates/drill-override.conf > /opt/apache-drill/temp.conf &&\
sed s/CLUSTER_ID/"${NODENAME}"/g /opt/apache-drill/temp.conf > /opt/apache-drill/conf/drill-override.conf &&\
/opt/apache-drill/bin/drillbit.sh "$@"