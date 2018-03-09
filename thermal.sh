#!/system/bin/sh

sleep 1
INTERVAL=10

stype0=$(cat /sys/devices/virtual/thermal/thermal_zone0/type)
stype1=$(cat /sys/devices/virtual/thermal/thermal_zone1/type)
stype2=$(cat /sys/devices/virtual/thermal/thermal_zone2/type)
stype3=$(cat /sys/devices/virtual/thermal/thermal_zone3/type)
stype4=$(cat /sys/devices/virtual/thermal/thermal_zone4/type)
stype5=$(cat /sys/devices/virtual/thermal/thermal_zone5/type)
stype6=$(cat /sys/devices/virtual/thermal/thermal_zone6/type)
stype7=$(cat /sys/devices/virtual/thermal/thermal_zone7/type)
stype8=$(cat /sys/devices/virtual/thermal/thermal_zone8/type)
stype9=$(cat /sys/devices/virtual/thermal/thermal_zone9/type)

#echo "TIME,$stype0,$stype1,$stype2,$stype3,$stype4,$stype5,$stype6,$stype7,$stype8,$stype9"
echo "TIME,$stype0,$stype1,$stype2,$stype3,$stype4,$stype5,$stype6,$stype7,$stype8,$stype9">> /sdcard/temp.csv
while [ 1 ]; do
	deltatime=$(date +%D-%H:%M:%S)
	temp0=$(cat /sys/devices/virtual/thermal/thermal_zone0/temp)
	temp1=$(cat /sys/devices/virtual/thermal/thermal_zone1/temp)
        temp2=$(cat /sys/devices/virtual/thermal/thermal_zone2/temp)
        temp3=$(cat /sys/devices/virtual/thermal/thermal_zone3/temp)
        temp4=$(cat /sys/devices/virtual/thermal/thermal_zone4/temp)
        temp5=$(cat /sys/devices/virtual/thermal/thermal_zone5/temp)
        temp6=$(cat /sys/devices/virtual/thermal/thermal_zone6/temp)
        temp7=$(cat /sys/devices/virtual/thermal/thermal_zone7/temp)
        temp8=$(cat /sys/devices/virtual/thermal/thermal_zone8/temp)
        temp9=$(cat /sys/devices/virtual/thermal/thermal_zone9/temp)
	#echo "$deltatime,$temp0,$temp1,$temp2,$temp3,$temp4,$temp5,$temp6,$temp7,$temp8,$temp9"
	echo "$deltatime,$temp0,$temp1,$temp2,$temp3,$temp4,$temp5,$temp6,$temp7,$temp8,$temp9">> /sdcard/temp.csv
	
	sleep $INTERVAL
done
