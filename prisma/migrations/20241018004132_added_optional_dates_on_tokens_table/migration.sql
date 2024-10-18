-- AlterTable
ALTER TABLE `Token` MODIFY `activo` BOOLEAN NOT NULL DEFAULT true,
    MODIFY `fechaEliminacion` DATETIME(3) NULL,
    MODIFY `fechaActualizacion` DATETIME(3) NULL;
