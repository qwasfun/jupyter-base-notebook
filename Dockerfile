FROM  quay.io/jupyter/base-notebook:notebook-7.1.2

USER root

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    git \
    gcc \
    libc6-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/XaverKlemenschits/jupyter-c-kernel.git && \
    cd jupyter-c-kernel && \
    pip install -e . && \
    cd jupyter_c_kernel && install_c_kernel --user && \
    cd ../../ && rm -rf jupyter_c_kernel && \
    pip install jupyterlab-language-pack-zh-CN && \
    npm install -g tslab && \
    tslab install

USER ${NB_UID}
