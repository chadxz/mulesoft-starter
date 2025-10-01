# MuleSoft Starter Application

This is a hands-on starter application to help you learn MuleSoft development.

## Features

- REST API with CRUD operations for employee management
- In-memory H2 database (auto-initialized)
- Error handling examples
- DataWeave transformations
- Logging configuration

## Prerequisites

- Java JDK 8 or 11
- Maven 3.6+
- Anypoint Studio (optional, but recommended)

## Running the Application

### Using Maven (Command Line)

```bash
# Navigate to project directory
cd /Users/chad/mulesoft-starter

# Install dependencies and run
mvn clean install
mvn mule:run
```

### Using Anypoint Studio

1. Open Anypoint Studio
2. File > Import > Anypoint Studio > Anypoint Studio project from File System
3. Select the `/Users/chad/mulesoft-starter` folder
4. Right-click project > Run As > Mule Application

## Testing the API

Once the application is running, you can test it using curl:

### Health Check
```bash
curl http://localhost:8081/health
```

### Get All Employees
```bash
curl http://localhost:8081/api/employees
```

### Get Employee by ID
```bash
curl http://localhost:8081/api/employees/1
```

### Create New Employee
```bash
curl -X POST http://localhost:8081/api/employees \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Alice Cooper",
    "email": "alice@example.com",
    "department": "HR"
  }'
```

## Project Structure

```
mulesoft-starter/
├── pom.xml                          # Maven configuration
├── src/
│   ├── main/
│   │   ├── mule/
│   │   │   └── mulesoft-starter.xml # Main Mule configuration
│   │   └── resources/
│   │       ├── application-types.xml # Type definitions
│   │       └── log4j2.xml           # Logging configuration
│   └── test/
│       └── munit/                   # Unit tests (to be added)
└── README.md
```

## Key Learning Points

1. **Flows**: Each `<flow>` is like a method that handles a specific operation
2. **HTTP Listeners**: Define REST endpoints
3. **Database Operations**: Use `db:select`, `db:insert`, etc.
4. **DataWeave**: Transform data between formats (see `ee:transform` components)
5. **Error Handling**: Try-catch blocks and error handlers
6. **Logging**: Use `<logger>` components for debugging

## Next Steps

1. Add more CRUD operations (UPDATE, DELETE)
2. Implement input validation
3. Add pagination to the GET all employees endpoint
4. Create MUnit tests
5. Add more complex DataWeave transformations
6. Integrate with external APIs

## Troubleshooting

- **Port 8081 already in use**: Change the port in the HTTP Listener configuration
- **Database errors**: The H2 database is in-memory and resets on restart
- **Maven errors**: Ensure you have proper internet connectivity for downloading dependencies