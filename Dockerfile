# imageの選択
FROM ubuntu:20.04 
# インストール時にダイアログ・ボックスを開こうとして、エラーがあっても停止しないようにする。
# 参考:http://docs.docker.jp/v1.11/engine/faq.html#dockerfile-debian-frontend-noninteractive
ENV DEBIAN_FRONTEND noninteractive
# デフォルトのシェルをbashに設定
SHELL ["/bin/bash", "-c"]
# 各種必要なファイルをインストール
RUN apt-get update && apt-get install -y\
    texlive-lang-cjk xdvik-ja evince\
    texlive-fonts-recommended texlive-fonts-extra
RUN apt-get -y upgrade
