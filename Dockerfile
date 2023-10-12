## stage 1
FROM rust:1.73-buster AS build

COPY . /build

WORKDIR /build

RUN cargo build --release



## stage 2
FROM debian:stable-slim 

RUN useradd -m mon_user

COPY --from=build /build/target/debug/tp-wik-dps-tp01 /api/mon_api

USER mon_user

EXPOSE 8080

WORKDIR /api

CMD ["./tp-wik-dps-tp01"]
