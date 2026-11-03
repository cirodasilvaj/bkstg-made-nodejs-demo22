# bkstg-made-nodejs-demo22 (Node.js 20)

Node.js 20 microservice with SonarQube Quality Gate, Prometheus metrics and Fluentd/Loki logs

- **Stack**: Node.js 20 LTS (`node:http` + built-in `node --test`)
- **CI/CD & SonarQube Quality Gate**: `.github/workflows/ci.yml` (`projectKey: bkstg-made-nodejs-demo22`)
- **Prometheus Metrics**: `GET /metrics` (`app_http_requests_total`, `app_uptime_seconds`)
- **Fluentd -> Grafana Loki Logs**: Structured JSON logs forwarded via `fluentd.logging.svc.cluster.local:24224` -> `loki.grafana.svc.cluster.local:3100`
