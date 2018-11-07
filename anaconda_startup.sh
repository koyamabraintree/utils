
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh 


echo 'export PATH=/home/ec2-user/anaconda3/bin:$PATH' >> ~/.bashrc
source .bashrc
export PATH=~/anaconda3/bin:$PATH

