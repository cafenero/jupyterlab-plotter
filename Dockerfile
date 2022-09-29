# thanks to https://www.idnet.co.jp/column/page_187.html

FROM ubuntu:20.04

# Default settings
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Tokyo

# Essential packages
RUN apt-get update && apt-get install -y sudo python3 python3-pip git wget vim cron curl

WORKDIR /root/


RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    black \
    jupyterlab \
    jupyterlab_code_formatter \
    jupyterlab-git \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    ipywidgets \
    import-ipynb

RUN pip install --no-cache-dir \
    numpy \
    pandas \
    scipy \
    scikit-learn \
    pycaret \
    matplotlib \
    japanize_matplotlib \
    mlxtend \
    seaborn \
    plotly \
    requests \
    beautifulsoup4 \
    Pillow \
    opencv-python

RUN pip install --no-cache-dir \
    pydeps \
    graphviz \
    pandas_profiling \
    shap \
    umap \
    xgboost \
    lightgbm
