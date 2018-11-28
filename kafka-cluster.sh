#export DOCKERMACHINEIP=$(ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1)
export DOCKERMACHINEIP=$(sh `pwd`/get-host-ip.sh)
echo "Machine ip is : ${DOCKERMACHINEIP}"
if [ -z ${DOCKERMACHINEIP} ]; then
    echo "Machine ip is empty" && exit 1
fi
docker-compose up -d --scale kafka=2 && docker-compose logs -f


# READ : https://rmoff.net/2018/08/02/kafka-listeners-explained/
