# API HTTP Rust

Ce code permet de créer une API HTTP simple en Rust. 
C'est une API qui retourne au format JSON les headers de la requête quand il y une requête HTTP GET sur /ping.
Si la requête ne correspond pas aux critères souhaités, le serveur renvoie une réponse HTTP avec le code d'état 404 Not Found et le corps 404 Not Found.

## Prérequis
* Rust 1.59 ou supérieur
* Cargo

## Installation
cargo install

## Exécution
cargo build
cargo run

## Utilisation
Pour envoyer une requête au serveur, vous pouvez utiliser un outil comme curl.

Avec curl, vous pouvez exécuter la commande suivante pour envoyer une requête GET au serveur :

curl -i http://localhost:8080/ping
Cette commande devrait renvoyer la réponse suivante :

    HTTP/1.1 200 OK
    Content-Type: application/json

    "Accept": "*/*",
    "Host": "127.0.0.1:8080",
    "User-Agent": "curl/7.82.0"




