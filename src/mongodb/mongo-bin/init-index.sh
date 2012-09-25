#!/bin/bash
. mongo-env.sh

hostname=`hostname`

case $hostname in
    ycsb-node1 )
        $MONGO_HOME/bin/mongo --quiet js/init-index.js ;;
    ycsb-node2 )
        $MONGO_HOME/bin/mongo --quiet js/init-index.js ;;
    ycsb-node3 )
        $MONGO_HOME/bin/mongo --quiet js/init-index.js ;;
    ycsb-node4 )
        $MONGO_HOME/bin/mongo --quiet js/init-index.js ;;
esac
