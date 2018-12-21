while [[ true ]];
do
    WORD=$(cat /dev/urandom | tr -dc '[:alnum:]' | fold -w 32 | head -n 1)
    echo "$WORD"
    sleep 1
done
