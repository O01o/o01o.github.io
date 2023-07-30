/*
  Warnings:

  - You are about to drop the `TileSet` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "TileSet";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "Work" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "imgPath" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Skill" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "imgPath" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "star" INTEGER NOT NULL,
    "details" TEXT NOT NULL
);
