/*
  Warnings:

  - You are about to drop the column `imagePath` on the `TileSet` table. All the data in the column will be lost.
  - Added the required column `imgPath` to the `TileSet` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_TileSet" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "imgPath" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "details" TEXT NOT NULL
);
INSERT INTO "new_TileSet" ("details", "id", "title") SELECT "details", "id", "title" FROM "TileSet";
DROP TABLE "TileSet";
ALTER TABLE "new_TileSet" RENAME TO "TileSet";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
