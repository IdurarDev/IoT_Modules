-- CreateTable
CREATE TABLE "Module" (
    "id" SERIAL NOT NULL,
    "mesure" TEXT NOT NULL,
    "duringFunctionning" INTEGER NOT NULL,
    "state" BOOLEAN NOT NULL DEFAULT true,
    "dataSend" TEXT NOT NULL,

    CONSTRAINT "Module_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TypeModule" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "moduleId" INTEGER NOT NULL,

    CONSTRAINT "TypeModule_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Vehicule" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Vehicule_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TypeVehicule" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "vehiculeId" INTEGER NOT NULL,

    CONSTRAINT "TypeVehicule_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Histories" (
    "id" SERIAL NOT NULL,
    "vehiculeId" INTEGER NOT NULL,
    "moduleId" INTEGER NOT NULL,

    CONSTRAINT "Histories_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TicketCounting" (
    "id" SERIAL NOT NULL,
    "count" INTEGER NOT NULL,
    "moduleId" INTEGER NOT NULL,

    CONSTRAINT "TicketCounting_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "TypeModule" ADD CONSTRAINT "TypeModule_moduleId_fkey" FOREIGN KEY ("moduleId") REFERENCES "Module"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TypeVehicule" ADD CONSTRAINT "TypeVehicule_vehiculeId_fkey" FOREIGN KEY ("vehiculeId") REFERENCES "Vehicule"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Histories" ADD CONSTRAINT "Histories_moduleId_fkey" FOREIGN KEY ("moduleId") REFERENCES "Module"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Histories" ADD CONSTRAINT "Histories_vehiculeId_fkey" FOREIGN KEY ("vehiculeId") REFERENCES "Vehicule"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TicketCounting" ADD CONSTRAINT "TicketCounting_moduleId_fkey" FOREIGN KEY ("moduleId") REFERENCES "Module"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
