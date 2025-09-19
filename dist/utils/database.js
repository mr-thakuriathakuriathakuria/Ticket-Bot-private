// src/utils/database.ts
import { PrismaClient } from '@prisma/client';
// Use SQLite file without requiring an external .env.
// If you later add a .env with DATABASE_URL, Prisma will still prefer the override below.
const prisma = new PrismaClient({
    datasources: {
        db: {
            url: 'file:./dev.db',
        },
    },
});
export default prisma;
