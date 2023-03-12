CONTAINER_NAME=$1
if [ $(docker ps --format {{.Names}} |grep -e $CONTAINER_NAME|wc -l ) -gt 0 ];
then
echo "PRESENT"
else
echo "ABSENT"
fi