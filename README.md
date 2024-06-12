# Data Migration from MariaDB to MongoDB

## Overview
This project involves migrating data from a relational database (MariaDB) to a NoSQL database (MongoDB) using Python scripting. The migration process includes setting up relational tables, choosing MongoDB for NoSQL storage, modeling data appropriately, and developing a programmatic data migration script.

## Project Requirements

### Relational Database Setup
1. **Tables and Relationships**:
   - Created at least 4 tables in MariaDB with meaningful relationships using foreign keys.
   - Ensured integrity constraints (e.g., primary keys, unique constraints) are applied to maintain data consistency.
   - Populated each table with 15-20 records of realistic data.

### Choice of NoSQL Database

1. **Selection of MongoDB**:
   - Justified MongoDB based on its features, scalability, document-based data model, and performance benefits for this use case.
   - Chosen over other NoSQL databases (Redis, Cassandra, Neo4j) due to compatibility with document-oriented data and ease of integration with Python.

### Data Modeling in NoSQL Database

1. **MongoDB Data Model**:
   - Modeled data in MongoDB considering its document-based data model.
   - Translated the relational model from MariaDB to MongoDB, making key design decisions such as document structure, embedding vs. referencing, and denormalization strategies.

### Programmatic Data Migration

1. **Migration Script (`migrate_data.py`)**:
   - Developed a Python script to programmatically migrate data from MariaDB to MongoDB.
   - Handled data transformation, mapping from relational schema to document structure, and loading into MongoDB collections.
   - Implemented error handling to manage exceptions during data migration.
   - Included data verification steps to ensure data integrity and consistency post-migration.

### Documentation and Code

1. **Code Comments and Version Control**:
   - Commented Python script (`migrate_data.py`) to explain logic, functions, and data handling processes.
   - Utilized version control (e.g., Git) for managing code changes, ensuring collaboration and tracking modifications effectively.

## Prerequisites

Before running the migration script, ensure the following dependencies are installed:

- Python 3.x
- pymongo Python library
- pymysql Python library

## Configuration

- **MariaDB Connection**:
  - Update `config.py` with MariaDB connection details (host, user, password, database).

- **MongoDB Connection**:
  - Install MongoDB locally or connect to a remote instance.
  - Update `migrate_data.py` with MongoDB connection details (host, port).

## Running the Migration

To execute the migration script:

1. Clone or download the repository to your local machine.
2. Navigate to the project directory in the terminal:

   ```bash
   cd path/to/your/project
3. Run the migration script using Python:
   
   ```bash 
   python migrate_data.py

4. Monitor the terminal for logs and progress updates.
5. Verify data integrity in MongoDB collections post-migration.

## Error Handling and Troubleshooting

- Ensure MariaDB and MongoDB services are running.
- Verify network connectivity and firewall settings for database connections.
- Review migrate_data.log for detailed error messages and exceptions.

## Data Verification
After migration, validate data integrity and consistency in MongoDB:

- Use MongoDB Compass or command-line tools (mongo, pymongo) to query and verify data.
- Compare record counts and sample data between MariaDB tables and MongoDB collections.

## Dependencies
- pymongo: Python driver for MongoDB, facilitates connections and database operations.
- pymysql: Python client library for MariaDB/MySQL, used for database connectivity and data retrieval.

## Contributing
Contributions are welcome! Fork the repository, make changes, and submit a pull request. For significant modifications, open an issue to discuss proposed changes beforehand.

## License
This project is licensed under the MIT License. See the LICENSE file for details

## Acknowledgments
Thanks to the open-source community for developing and maintaining essential tools and libraries.
References and inspiration from various online resources and documentation.
