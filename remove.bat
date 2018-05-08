dir
::rm devops -rf
rmdir /S /Q devops
dir
::call rmdir devops -y
::php -r "unlink('composer.phar');"
