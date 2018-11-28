export topic=""
if [[ -z $1 ]]; then
    topic=""
else
    topic="-t $1"
fi
kafkacat -L -b $(sh ./get-brokers.sh) $topic
