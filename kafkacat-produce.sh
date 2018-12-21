export brokers=$(sh ./get-brokers.sh)
kafkacat -P -b "$brokers" "$@"
