function getspeed --wraps='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -' --description 'alias getspeed=curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
  curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 - $argv
        
end
