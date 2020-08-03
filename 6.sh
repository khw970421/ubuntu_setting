set -e  # 오류 발생시 스크립트 종료

cd /home/vectorsis
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
source ~/.bashrc  # 수정된 내용 적용. sudo 쓰면 안되므로 여기서 실행

python3 get-pip.py --user      #  .local/bin/pip3
pip3 install pip --user --upgrade
pip3 install -r requirements.txt --user --upgrade

python3 -m ipykernel install --user
ipython3 kernel install --user

jupyter notebook --generate-config

pip3 install dlib --user --upgrade

pip3 install torch --user --upgrade
pip3 install torchsummary --user --upgrade
pip3 install torchtext --user --upgrade
pip3 install torchvision --user --upgrade

git clone https://github.com/fchollet/keras
cd keras
python3 setup.py install --user # NO upgrade

wget https://chromedriver.storage.googleapis.com/72.0.3626.69/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  # ubuntu 64
sudo dpkg -i google-chrome-stable_current_amd64.deb  # server version automatically error

