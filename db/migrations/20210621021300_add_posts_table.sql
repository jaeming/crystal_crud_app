-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE posts(
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  body TEXT NOT NULL,
  published BOOLEAN,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE posts;