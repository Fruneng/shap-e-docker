FROM nvidia/cuda:12.2.0-runtime-ubuntu22.04

ENV HTTP_PROXY=http://proxy.intern.yuansuan.cn:30890
ENV HTTPS_PROXY=http://proxy.intern.yuansuan.cn:30890
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y
RUN apt install git python3 python3-pip -y

RUN apt install blender -y
ENV BLENDER_PATH=/usr/bin/blender

RUN pip install notebook
RUN pip install ipywidgets

WORKDIR /workspace
RUN git clone https://github.com/openai/shap-e.git

WORKDIR /workspace/shap-e
RUN pip install -e .


