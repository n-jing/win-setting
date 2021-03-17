#! /bin/bash


export http_proxy="socks5://127.0.0.1:1081"
export https_proxy="socks5://127.0.0.1:1081"

git config --global http.proxy 'socks5://127.0.0.1:1081' 
git config --global https.proxy 'socks5://127.0.0.1:1081'
