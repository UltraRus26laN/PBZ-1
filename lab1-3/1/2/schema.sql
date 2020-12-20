CREATE TABLE providers
(
    id     text PRIMARY KEY,
    name   text     NOT NULL,
    status SMALLINT NOT NULL,
    city   text     NOT NULL
);

CREATE TABLE details
(
    id    text PRIMARY KEY,
    name  text     NOT NULL,
    color text     NOT NULL,
    size  SMALLINT NOT NULL,
    city  text     NOT NULL
);

CREATE TABLE projects
(
    id   text PRIMARY KEY,
    name text NOT NULL,
    city text NOT NULL
);

CREATE TABLE provider_project_detail_numbers
(
    provider_id text   NOT NULL REFERENCES providers (id),
    detail_id   text   NOT NULL REFERENCES details (id),
    project_id  text   NOT NULL REFERENCES projects (id),
    quantity    BIGINT NOT NULL
);