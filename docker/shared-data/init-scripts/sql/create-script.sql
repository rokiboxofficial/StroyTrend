﻿CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

START TRANSACTION;

CREATE TABLE "Projects" (
    "Id" integer GENERATED BY DEFAULT AS IDENTITY,
    "Name" text NOT NULL,
    "About" text NOT NULL,
    CONSTRAINT "PK_Projects" PRIMARY KEY ("Id")
);

CREATE TABLE "Entries" (
    "Id" integer GENERATED BY DEFAULT AS IDENTITY,
    "Date" timestamp with time zone NOT NULL,
    "Key" text NOT NULL,
    "Value" integer NOT NULL,
    "ProjectId" integer NOT NULL,
    CONSTRAINT "PK_Entries" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_Entries_Projects_ProjectId" FOREIGN KEY ("ProjectId") REFERENCES "Projects" ("Id") ON DELETE CASCADE
);

CREATE INDEX "IX_Entries_ProjectId" ON "Entries" ("ProjectId");

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20240311191347_InitialCreate', '8.0.2');

COMMIT;
