 #!/bin/bash
wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz
mkdir -p heroku
tar -xvzf heroku-linux-amd64.tar.gz -C heroku
# ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku
    
cat > ~/.netrc << EOF
machine api.heroku.com
  login $HEROKU_LOGIN
  password $HEROKU_API_KEY
EOF

cat >> ~/.ssh/config << EOF
VerifyHostKeyDNS yes
StrictHostKeyChecking no
EOF