# syntax=docker/dockerfile:experimental

FROM debian:buster as build
RUN apt update && apt install -y g++
COPY ./main.cc /main.cc
RUN g++ -o /the-time /main.cc

FROM debian:buster-slim
COPY --from=build /the-time /the-time
CMD /the-time