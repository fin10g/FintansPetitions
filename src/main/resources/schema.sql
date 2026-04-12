DROP TABLE IF EXISTS signer;
DROP TABLE IF EXISTS petition;

CREATE TABLE petition (
                          id BIGINT NOT NULL AUTO_INCREMENT,
                          title VARCHAR(255) NOT NULL,
                          description TEXT NOT NULL,
                          PRIMARY KEY (id)
);

CREATE TABLE signer (
                        signer_id BIGINT NOT NULL AUTO_INCREMENT,
                        first_name VARCHAR(255) NOT NULL,
                        last_name VARCHAR(255) NOT NULL,
                        email VARCHAR(255) NOT NULL,
                        petition_id BIGINT,
                        PRIMARY KEY (signer_id),
                        FOREIGN KEY (petition_id) REFERENCES petition(id)
);