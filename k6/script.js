import http from "k6/http";
import { sleep } from "k6";

export default function () {
  http.get("http://go-app:8080/");
  http.get("http://go-app:8080/get-user");
  http.get("http://go-app:8080/get-role");
  http.get("http://go-app:8080/get-level");

  // Simulate errors
  http.get("http://go-app:8080/get-user?param=error");
  http.get("http://go-app:8080/get-role?param=not-found");

  sleep(1);
}