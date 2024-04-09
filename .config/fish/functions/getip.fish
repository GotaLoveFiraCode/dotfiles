function getip --wraps='curl --max-time 1.5 --silent https://wtfismyip.com/text' --description 'alias getip=curl --max-time 1.5 --silent https://wtfismyip.com/text'
  curl --max-time 1.5 --silent https://wtfismyip.com/text $argv
        
end
