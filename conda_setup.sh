ANACONDA_VERSION=3-5.0.1

PYENV=~/.pyenv

PYENV_BIN=$PYENV/bin

sudo yum -y install git
git clone https://github.com/pyenv/pyenv.git $PYENV

echo -e "\nexport PYENV_ROOT=$PYENV" | sudo tee -a ~/.bash_profile  >> /dev/null
echo -e "\nexport PATH=$PYENV_BIN:$PATH" | sudo tee -a ~/.bash_profile  >> /dev/null
echo -e "\neval '$($PYENV_BIN/pyenv init -)'" | sudo tee -a ~/.bash_profile  >> /dev/null
source ~/.bash_profile

pyenv install -l | grep ana
pyenv install anaconda$ANACONDA_VERSION
pyenv rehash
pyenv global anaconda$ANACONDA_VERSION
echo -e "\nexport PATH='$PYENV/versions/anaconda$ANACONDA_VERSION/bin/:$PATH'" | sudo tee -a ~/.bash_profile  >> /dev/null
source ~/.bash_profile
conda update --yes conda
conda install --yes python==3.4

#wget https://repo.continuum.io/ddarchive/Anaconda3-5.0.1-Linux-x86_64.sh
#bash Anaconda3-5.0.1-Linux-x86_64.sh 
#echo 'export PATH=/home/ec2-user/anaconda3/bin:$PATH' >> ~/.bashrc
#source .bashrc
#export PATH=~/anaconda3/bin:$PATH



