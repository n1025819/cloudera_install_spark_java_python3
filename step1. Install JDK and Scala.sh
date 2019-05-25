#! /bin/bash
#安裝JAVA、SCALA解壓縮、移動至根目錄
#1. Download latest jdk and scala. Decompress them to home director. 
cd ~/Downloads
wget https://repo.huaweicloud.com/java/jdk/8u201-b09/jdk-8u201-linux-x64.tar.gz
tar zxvf jdk-8u201-linux-x64.tar.gz
mv jdk1.8.0_201 ~/
wget https://downloads.lightbend.com/scala/2.11.12/scala-2.11.12.tgz
tar zxvf scala-2.11.12.tgz
mv scala-2.11.12 ~/

#2. Setup JAVA_HOME, SCALA_HOME and PATH variables in ~/.bashrc
#加上環境變數
cd ~ 
echo -e "export JAVA_HOME=/home/cloudera/jdk1.8.0_201" >> .bashrc
echo -e "export JAVA_HOME=/home/cloudera/jdk1.8.0_201" >> .bashrc
echo -e "export PATH=$JAVA_HOME/bin:$PATH" >> .bashrc

echo -e "export SCALA_HOME=/home/cloudera/scala-2.11.12" >> .bashrc
echo -e "export PATH=$SCALA_HOME/bin:$PATH" >> .bashrc


#3. Source ~/.bashrc for the settings to take effect
#重啟環境變數
source ~/.bashrc

#4. Test it
#測試版本
java -version
scala -version

