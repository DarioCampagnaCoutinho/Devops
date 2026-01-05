#cloud-config
package_update: true
packages:
  - nginx

runcmd:
  - [ sh, -c, 'echo "<html><head><meta charset="utf-8"/><title>Mensagem</title></head><body><h1>${message}</h1></body></html>" > /usr/share/nginx/html/index.html' ]
  - [ systemctl, enable, --now, nginx ]
