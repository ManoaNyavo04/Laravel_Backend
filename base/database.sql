CREATE DATABASE laravel_api;
\c laravel_api;

CREATE TABLE departement(
    id_departement serial primary key,
    nom_departement VARCHAR(50)
);

CREATE TABLE personne(
    id_personne serial primary key,
    nom VARCHAR(50),
    email VARCHAR(255),
    dtn DATE,
    id_departement INT NOT NULL,
    foreign key (id_departement) references departement(id_departement)
);
