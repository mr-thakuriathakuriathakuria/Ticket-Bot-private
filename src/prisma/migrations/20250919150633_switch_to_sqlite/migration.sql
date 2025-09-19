-- CreateTable
CREATE TABLE "Ticket" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "ticketNumber" INTEGER NOT NULL,
    "ticketType" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "channelId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "ticketMessageId" TEXT,
    "reason" TEXT,
    "reportedUser" TEXT,
    "inviteLink" TEXT,
    "proofUrls" JSONB,
    "transcriptUrl" TEXT,
    "lastMessageAt" DATETIME,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "added_user" JSONB,
    "added_roles" JSONB,
    "duration" INTEGER,
    "outsideMessageId" TEXT,
    "logMessageUrl" TEXT
);

-- CreateTable
CREATE TABLE "TicketSettings" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT DEFAULT 1,
    "ticketCounter" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "PlayerProfile" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "discordUserId" TEXT NOT NULL,
    "ign" TEXT NOT NULL,
    "lastSeen" DATETIME,
    "ranks" JSONB,
    "clanName" TEXT,
    "rankInfo" JSONB,
    "friends" JSONB,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "TicketConfig" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "ticketType" TEXT NOT NULL,
    "permissions" JSONB,
    "allowCustomInstructions" BOOLEAN NOT NULL DEFAULT false,
    "useCustomInstructions" BOOLEAN NOT NULL DEFAULT false,
    "instructions" TEXT,
    "previewTitle" TEXT
);

-- CreateTable
CREATE TABLE "TicketBlacklist" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" TEXT NOT NULL,
    "expiresAt" DATETIME,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateIndex
CREATE UNIQUE INDEX "PlayerProfile_discordUserId_key" ON "PlayerProfile"("discordUserId");

-- CreateIndex
CREATE UNIQUE INDEX "TicketConfig_ticketType_key" ON "TicketConfig"("ticketType");

-- CreateIndex
CREATE UNIQUE INDEX "TicketBlacklist_userId_key" ON "TicketBlacklist"("userId");
