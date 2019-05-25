#! /bin/bash
#1. Download latest Spark for current Hadoop. Decompress them to home director. 

cd ~/Downloads
wget https://archive.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.6.tgz
tar zxvf spark-2.4.0-bin-hadoop2.6.tgz 
mv spark-2.4.0-bin-hadoop2.6 ~/


#2. Setup SPARK_HOME and PATH variables in ~/.bashrc

cd ~
#---------------------------------
# .bashrc
#...

echo "export SPARK_HOME=/home/cloudera/spark-2.4.0-bin-hadoop2.6" >> .bashrc
echo "export PATH=$SPARK_HOME/bin:$PATH" >> .bashrc
echo "export PYSPARK_PYTHON=python3" >> .bashrc
echo "export PYSPARK_DRIVER_PYTHON=ipython3" >> .bashrc

#3. source ~/.bashrc for the settings to take effect

source ~/.bashrc


#4. Test it

which spark-submit


#5. Start the spark cluster

cd ~/spark-2.4.0-bin-hadoop2.6/sbin
./start-all.sh


#check 
#http://localhost:8080

#to see if the master and a worker are running

#6. Setup spark-shell for exiSpark SQL

# allow cloudera user to access /tmp/hive locally and /tmp/hive in HDFS

sudo chmod 777 -R /tmp/hive

sudo su - hdfs
hadoop fs -chmod -R 777 /tmp/hive
exit

#7. test spark-shell

pyspark --master spark://quickstart.cloudera:7077

#Welcome to
#      ____              __
#     / __/__  ___ _____/ /__
#    _\ \/ _ \/ _ `/ __/  '_/
#   /__ / .__/\_,_/_/ /_/\_\   version 2.4.0
#      /_/
#
#Using Python version 3.7.1 (default, Dec 14 2018 19:28:38)
#SparkSession available as 'spark'.



