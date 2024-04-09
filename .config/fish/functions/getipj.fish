function getipj --wraps='curl --max-time 1.5 --silent https://wtfismyip.com/json | jq .' --description 'alias getipj=curl --max-time 1.5 --silent https://wtfismyip.com/json | jq .'
  curl --max-time 1.5 --silent https://wtfismyip.com/json | jq . $argv
        
end
