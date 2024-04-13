FROM  quay.io/jupyter/base-notebook:notebook-7.1.2

USER root

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    gcc \
    libc6-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    pip install jupyter-c-kernel jupyterlab-language-pack-zh-CN && \
    install_c_kernel --user && \
    npm install -g tslab && \
    tslab install

USER ${NB_UID}
