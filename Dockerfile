FROM  quay.io/jupyter/base-notebook:notebook-7.2.1

USER root

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    git \
    gcc \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-plain-generic \
    libc6-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    cd /srv && \
    git clone https://github.com/XaverKlemenschits/jupyter-c-kernel.git && \
    cd jupyter-c-kernel && \
    pip install -e . && \
    cd jupyter_c_kernel && install_c_kernel --user && \
    pip install jupyterlab-language-pack-zh-CN && \
    pip install jupyterlab-git  && \
    npm install -g tslab && \
    tslab install

USER ${NB_UID}
