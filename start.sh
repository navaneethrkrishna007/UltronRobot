if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/navaneethrkrishna007/UltronRobot /LuciferMoringstar-Robot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /UltronRobot
fi
cd /UltronRobot
pip3 install -U -r requirements.txt
echo "Starting UltronRobot...."
python3 main.py
