# Docker-Series

Welcome to the Docker-Series! 🚀

This repo is your go-to place for Docker setups across various popular programming languages. Whether you're a developer or a DevOps engineer, you’ll find Dockerfiles and Docker Compose files here to help you containerize your apps with ease.

## What’s Inside?

### Dockerfiles

These are like recipes for creating Docker images. Each Dockerfile is tailored for a specific programming language. Here’s what you can find:

- **Python**: For Python apps. Sets up Python and dependencies.
- **Node.js**: For Node.js apps. Uses npm or Yarn for packages.
- **Java**: For Java apps. Handles JAR files.
- **Ruby**: For Ruby apps. Manages dependencies with Bundler.
- **Go**: For Go apps. Builds your Go binaries.
- **PHP**: For PHP apps. Uses Apache to serve your code.
- **C# (.NET Core)**: For .NET Core apps. Handles both build and runtime.
- **React**: For React apps. Builds with Yarn and serves with Nginx.
- **Rust**: For Rust apps. Uses multi-stage builds for efficiency.

## How to Use

1. **Clone the Repo**:

   ```bash
   git clone https://github.com/abisecops/Docker-Series.git && cd Docker-Series
   ```

2. **Go to the Directory for Your Language**:

   Each language has its own folder with the Dockerfile and Docker Compose file. Navigate to the one you need.

3. **Build and Run**:

   With Docker Compose, you can build and start your container with:

   ```bash
   docker-compose up --build
   ```

   This command builds the Docker image and starts the container. 

4. **Access Your App**:

   By default, your app will be available at `http://localhost:8080` or whatever port is specified in the Docker Compose file. 

5. **Stop and Remove**:

   When you're done, stop and remove everything with:

   ```bash
   docker-compose down
   ```

## Contributing

Got improvements or Docker setups for other languages? Feel free to contribute by opening a pull request!

## License

This project is licensed under the MIT License. Check out the [LICENSE](LICENSE) file for more details.

## Contact

Have questions or need help? Open an issue here or reach out to [email](pingabisec@gmail.com).

Happy containerizing! 🌟
