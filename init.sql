CREATE TABLE IF NOT EXISTS claims (
        id SERIAL PRIMARY KEY,
        employee_id VARCHAR(7) NOT NULL,
        employee_name VARCHAR(30) NOT NULL,
        title VARCHAR(30) NOT NULL,
        date DATE NOT NULL,
        amount NUMERIC(10, 2) NOT NULL,
        category VARCHAR(50) NOT NULL,
        description TEXT NOT NULL,
        status VARCHAR(20) DEFAULT 'pending',
        response TEXT DEFAULT ''
      );

      CREATE TABLE IF NOT EXISTS claim_attachments (
        id SERIAL PRIMARY KEY,
        claim_id INTEGER REFERENCES claims(id) ON DELETE CASCADE,
        file_name VARCHAR(255) NOT NULL,
        file_path VARCHAR(255) NOT NULL,
        file_size INTEGER NOT NULL,
        mime_type VARCHAR(100) NOT NULL
      );