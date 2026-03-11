# Spring Boot Demo (JSP)

A minimal Spring Boot app with JSP pages for learning GitHub + Jenkins + ngrok deployment.

## Project Structure

```
src/
└── main/
    ├── java/com/example/demo/
    │   ├── DemoApplication.java   ← App entry point
    │   └── HelloController.java  ← Routes & model data
    ├── resources/
    │   └── application.properties
    └── webapp/WEB-INF/views/
        ├── home.jsp               ← Home page with form
        └── greet.jsp              ← Greeting result page
```

## Pages

| URL | Description |
|-----|-------------|
| `GET /` | Home page with name input form |
| `GET /greet?name=John` | Greeting page for that name |

## Run Locally

```bash
mvn spring-boot:run
```

Visit: http://localhost:8081

## Build WAR

```bash
mvn clean package -DskipTests
java -jar target/demo-0.0.1-SNAPSHOT.war
```

> Note: JSP requires WAR packaging — the output is a `.war` file, not `.jar`
