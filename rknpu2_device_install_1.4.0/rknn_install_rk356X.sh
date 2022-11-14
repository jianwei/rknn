echo "***** install rknpu2 start *****"
echo "cp lib"
sudo cp ./rknpu2_1.4.0_20220909/runtime/RK356X/Linux/librknn_api/aarch64/* /usr/lib
echo "cp bin"
sudo cp ./rknpu2_1.4.0_20220909/runtime/RK356X/Linux/rknn_server/aarch64/usr/bin/* /usr/bin/
echo "***** install rknpu2 end *****"

echo "***** install rknn_toolkit_lite2  start *****"
echo "update"
sudo apt update -y
# echo "install aptitude"
# sudo apt-get install aptitude -y
echo "install python3"
sudo apt install -y python3 
echo "install python3-dev"
sudo apt install -y python3-dev 
echo "install python3-pip"
sudo apt install -y python3-pip 
echo "install gcc"
sudo apt install -y gcc
echo "install python3-opencv"
sudo apt install -y python3-opencv
echo "install python3-numpy"
sudo apt install -y python3-numpy
echo "install rknn_toolkit_lite2"
pip3 install ./rknn-toolkit2-1.4.0/rknn_toolkit_lite2/packages/rknn_toolkit_lite2-1.4.0-cp39-cp39-linux_aarch64.whl -i https://pypi.tuna.tsinghua.edu.cn/simple/
echo "***** install rknn_toolkit_lite2  end *****"

echo "***** install running test start *****"
cd ./rknn-toolkit2-1.4.0/rknn_toolkit_lite2/examples/inference_with_lite || exit
sudo -E python3 test.py
echo "***** install running test end *****"