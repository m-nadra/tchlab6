# Technologie chumrowa - lab 5

## Mikołaj Nadra TI 6.2

Link do DockerHub: https://hub.docker.com/repository/docker/minad1822/main/tags/lab5/

Polecenie budujące obraz:
- bez podania VERSION (wstawia domyślne słowo "latest")
    ```bash
    docker build -t minad1822/main:lab5 .
    ```
    ![bez VERSION](screeny/1.png)
- z podaniem VERSION
    ```bash
    docker build --build-arg VERSION=1.0.2 -t minad1822 main:lab5 .
    ```
    ![bez VERSION](screeny/2.png)

Potwierdzenie wykonania HEALTCHECKA: 
![bez VERSION](screeny/3.png)
