# MuleSoft Hello World - Getting Started Tour

## Overview
This tour walks you through setting up your first MuleSoft application in Anypoint Studio. By the end, you'll have a working REST API with database integration.

## Prerequisites Completed
- Anypoint Studio installed
- Java 11 or 17 configured
- Maven installed

## Step 1: Launch Anypoint Studio
1. Open Anypoint Studio from your Applications folder
2. Select a workspace directory (e.g., `/Users/chad/AnypointStudio/workspace`)
3. Click "Launch"
4. Wait for the IDE to fully load

## Step 2: Import the Starter Project
1. In Anypoint Studio, click **File** → **Import...**
2. Select **Anypoint Studio** → **Anypoint Studio project from File System**
3. Click **Next**
4. Browse to `/Users/chad/mulesoft-starter`
5. Select the folder and click **Open**
6. Ensure "mulesoft-starter" is checked
7. Click **Finish**

## Step 3: Explore the Visual Flow Editor
Once imported, you'll see:
- **Package Explorer** (left): Project structure
- **Canvas** (center): Visual representation of your Mule flows
- **Mule Palette** (right): Available components

The canvas shows your application flows:
- `initialize-database`: Sets up H2 database with sample data
- `get-all-employees`: Lists all employees (GET /api/employees)
- `get-employee-by-id`: Gets specific employee (GET /api/employees/{id})
- `create-employee`: Creates new employee (POST /api/employees)
- `health-check`: Application health endpoint (GET /health)

## Step 4: Run the Application
1. Right-click on "mulesoft-starter" in Package Explorer
2. Select **Run As** → **Mule Application**
3. Watch the Console tab for startup logs
4. Look for "DEPLOYED" status and "Started app 'mulesoft-starter'"

## Step 5: Test the Application
Once running, test your API:

```bash
# Health check
curl http://localhost:8081/health

# Expected response:
{
  "status": "healthy",
  "timestamp": "2025-10-01T16:41:36.383654-05:00",
  "application": "mulesoft-starter",
  "version": "1.0.0"
}
```

## What You've Accomplished
✅ Set up Anypoint Studio IDE  
✅ Imported and understood a Mule project structure  
✅ Learned about visual flow design  
✅ Successfully ran a Mule application  
✅ Tested REST API endpoints  

## Key Concepts Learned
- **Flows**: Container for your integration logic (like methods/functions)
- **HTTP Listeners**: Define REST endpoints
- **Connectors**: Pre-built integrations (HTTP, Database, etc.)
- **Visual Development**: Drag-and-drop interface for building integrations

## Project Structure
```
mulesoft-starter/
├── pom.xml                          # Maven configuration
├── src/
│   ├── main/
│   │   ├── mule/
│   │   │   └── mulesoft-starter.xml # Main Mule configuration (flows)
│   │   └── resources/
│   │       ├── application-types.xml # Type definitions
│   │       └── log4j2.xml           # Logging configuration
│   └── test/
│       └── munit/                   # Unit tests directory
```

## Next Steps
Now that you have a working application, you can:
1. Test more endpoints (GET all employees, POST new employee)
2. Modify flows in the visual editor
3. Add new functionality
4. Learn about DataWeave transformations
5. Explore error handling

Congratulations on running your first MuleSoft application! 🎉