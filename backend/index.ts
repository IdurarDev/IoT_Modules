import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
  const vehicule = await prisma.vehicule.findMany()
  console.log(vehicule)
}

main()
  .catch((e) => {
    throw e
  })
  .finally(async () => {
    await prisma.$disconnect()
  })