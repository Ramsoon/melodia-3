CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(200) NOT NULL
);

-- Insert a sample user with hashed password ("password123")
INSERT INTO users (username, password)
VALUES ('sadiq', '$2b$10$mIlPMLnyEIEu1B41n4NMSeeAI.in/Z3Wk8pqoxVkJx10wx1o1LKTS')
ON CONFLICT (username) DO NOTHING;
