cd /home/vagrant/ ;
tar xvf cassandra.tar.gz ;
echo 'PATH="apache-cassandra-3.11.4/bin/:$PATH"' >> /home/vagrant/.bashrc ;
sudo dnf install -y java-1.8.0-openjdk.x86_64;
