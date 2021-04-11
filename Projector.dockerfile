FROM python:3.9-buster

RUN apt update && \
    apt install less libxext6 libxrender1 libxtst6 libfreetype6 libxi6 -y
RUN apt install vim -y

RUN pip3 install projector-installer --user

ENV PATH $PATH:/root/.local/bin
RUN (echo "y" && cat) | projector ide autoinstall --config-name intellij \
                                                  --ide-name "IntelliJ IDEA Ultimate 2021.1"

ENV SDKMAN_DIR /root/.sdkman
RUN apt install zip unzip -y && \
    curl -s "https://get.sdkman.io" | bash
RUN chmod a+x /root/.sdkman/bin/sdkman-init.sh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN set -x  && \
    echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config && \
    echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config && \
    echo "sdkman_insecure_ssl=false" >> $SDKMAN_DIR/etc/config
RUN source "$SDKMAN_DIR/bin/sdkman-init.sh" && sdk install java 11.0.10.hs-adpt

WORKDIR /IdeaProjects

CMD ["projector", "run"]