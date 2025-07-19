# GO Monitoring Demo

### Summary:

A simple observability demo application built with Go, Prometheus, and Grafana.

### Features:
* Expose custom metrics from a Go web server using the Prometheus client library
* Scrape those metrics using Prometheus
* Visualize them with Grafana
* Load test the application using k6

### Installation:

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/androsyz/go-monitoring-demo.git

    cd go-monitoring-demo
    ```
   
2.  **Run Docker Compose:**

    ```bash
    docker compose up -d
    ```

### Usage:

Once your Docker services are up and running, you can access the Grafana dashboard by visiting http://localhost:3000.

Log in using the default credentials:
```
Username: admin  
Password: admin
```

If you'd like to run a load test with k6, simply execute the following command:
```
docker compose run --rm k6
```

### Preview:
[Dashboard](https://imgur.com/a/wGjGqUp)



