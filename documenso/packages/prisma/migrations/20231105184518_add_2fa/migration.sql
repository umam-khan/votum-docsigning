-- AlterTable
ALTER TABLE "User"
ADD COLUMN "twoFactorBackupCodes" TEXT,
ADD COLUMN "twoFactorEnabled" BOOLEAN NOT NULL DEFAULT FALSE,
ADD COLUMN "twoFactorSecret" TEXT;
