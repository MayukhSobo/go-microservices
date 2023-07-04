# Go Microservice :rocket:

Go Microservice is a collection of microservices built using Golang and follows a hexagonal microservice architecture with Go kit. It provides a scalable and modular foundation for building distributed systems.

## :star2: Features

- :diamond_shape_with_a_dot_inside: Hexagonal microservice architecture using Go kit.
- :speech_balloon: Communication between microservices using Protocol Buffers.
- :electric_plug: Separation of business logic from connection, logging, and tracing.
- :rocket: Independent deployment and scaling of microservices on Kubernetes.
- :chart_with_upwards_trend: Integration with popular monitoring and tracing tools like Jaeger, Prometheus, LogDNA, Graphana, ELK, etc.

## :rocket: Getting Started

These instructions will help you set up the project and get it running on your local machine for development and testing purposes. Please refer to the individual microservice directories for microservice-specific instructions.

### :white_check_mark: Prerequisites

- Golang (version X.X.X)
- Docker (version X.X.X)
- Kubernetes (version X.X.X)
- Protocol Buffers (protoc) (version X.X.X)

### :computer: Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/your-repository.git
   ```

2. Install the project dependencies:

   ```bash
   go mod download
   ```

3. Build the project:

   ```bash
   go build ./...
   ```

## :file_folder: Project Structure

The project follows a modular structure with separate directories for each microservice. The overall directory structure is as follows:

- `cmd`: Entry point for each microservice.
- `internal`: Contains the internal packages for each microservice, including the domain, use case, and repository.
- `pkg`: Contains the reusable packages, such as API handlers and Protocol Buffers.
- `scripts`: Contains the scripts for building, running, and testing the project.

## :hammer_and_wrench: Usage

Please refer to the individual microservice directories for microservice-specific usage instructions.

## :test_tube: Testing

The project includes comprehensive test coverage for each microservice. To run the tests, use the following command:

```bash
go test ./...
```

## :rocket: Deployment

Each microservice can be deployed independently on a Kubernetes cluster. Refer to the individual microservice directories for microservice-specific deployment instructions.

## :chart_with_upwards_trend: Monitoring and Logging

The project integrates with popular monitoring and logging tools, including Jaeger, Prometheus, LogDNA, Graphana, and ELK. Refer to the individual microservice directories for microservice-specific monitoring and logging instructions.

## :busts_in_silhouette: Contributing

Contributions are welcome! Please follow the guidelines in the CONTRIBUTING.md file.

## :page_facing_up: License

This project is licensed under the [MIT License](LICENSE).

## :raising_hand: Author

#### Mayukh Sarkar

- LinkedIn: [Mayukh Sarkar](https://linkedin.com/in/mayukhsarkar)
- GitHub: [MayukhSobo](https://github.com/MayukhSobo)

---
