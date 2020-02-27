#!/bin/bash
echo "Cual es tu edad? "
read edad
if [ $edad -ge 18 ]
then
	echo "a bueno pasele mi rey"
else
	echo "mi loco salgase"
fi
date
