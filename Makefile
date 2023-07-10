all: image

image: Dockerfile
	docker build . -t nvidia-shap-e

run:
	docker run -it --rm --runtime=nvidia --gpus all -p 8888:8888 nvidia-shap-e jupyter notebook --allow-root --ip 0.0.0.0

