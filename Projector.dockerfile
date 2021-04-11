FROM python:3.9-buster

RUN apt update && \
    apt install less libxext6 libxrender1 libxtst6 libfreetype6 libxi6 -y
RUN apt install vim -y

RUN pip3 install projector-installer --user && \
    echo 'export PATH=$PATH:~/.local/bin' >> /root/.bashrc

ENV PATH $PATH:/root/.local/bin
RUN (echo "y" && cat) | projector ide autoinstall --config-name intellij \
                                                  --ide-name "IntelliJ IDEA Ultimate 2021.1"

CMD ["projector", "run"]