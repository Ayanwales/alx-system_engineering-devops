#configurate an nginx server
exec {'confiser':
  provider => shell,
  command  => 'sudo apt-get update && sudo apt-get install -y nginx && echo "Hello world!" | sudo tee /var/www/html/index.html && sudo chmod -R 777 /etc/nginx && sudo sed -i "/server_name _;/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default && sudo service nginx restart',
}
