export brokers=$(sh ./get-brokers.sh)
kafkacat -C -b "$brokers" "$@"
