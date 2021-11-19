out/time: ./main.cc
	mkdir -p out && g++ -o out/the-time ./main.cc
.PHONY: image
image:
	docker build . -t ghcr.io/strrl/the-time-cpp:latest
