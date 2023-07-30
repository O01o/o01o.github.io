/*
  Warnings:

  - You are about to drop the `Work` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Work";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "TileSet" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "imagePath" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "details" TEXT NOT NULL
);
