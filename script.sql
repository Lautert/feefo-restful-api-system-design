CREATE TABLE user_note (
    cd_user_note INTEGER,
    cd_user INTEGER,
    ds_name VARCHAR(100) NOT NULL,
    tx_text TEXT,
    ts_registry TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_user_note PRIMARY KEY (cd_user_note),
    CONSTRAINT fk_user_note_user FOREIGN KEY (cd_user) REFERENCES user (cd_user)
);