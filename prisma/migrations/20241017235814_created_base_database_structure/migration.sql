-- CreateTable
CREATE TABLE `Bautizo` (
    `bautizo_id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre_bautizado` VARCHAR(191) NOT NULL,
    `fecha_nacimiento` DATETIME(3) NOT NULL,
    `fecha_bautizo` DATETIME(3) NOT NULL,
    `parroquia_id` INTEGER NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`bautizo_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Confirmacion` (
    `confirmacion_id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre_confirmado` VARCHAR(191) NOT NULL,
    `fecha_nacimiento` DATETIME(3) NOT NULL,
    `fecha_confirmacion` DATETIME(3) NOT NULL,
    `parroquia_id` INTEGER NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`confirmacion_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `EventoParroquial` (
    `evento_id` INTEGER NOT NULL AUTO_INCREMENT,
    `titulo` VARCHAR(191) NOT NULL,
    `descripcion` VARCHAR(191) NOT NULL,
    `fecha_horainicio` DATETIME(3) NOT NULL,
    `fecha_horafin` DATETIME(3) NOT NULL,
    `organizador_id` INTEGER NOT NULL,
    `salon_id` INTEGER NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`evento_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `EventoRecurrente` (
    `evento_recurrente_id` INTEGER NOT NULL AUTO_INCREMENT,
    `titulo_recurrente` VARCHAR(191) NOT NULL,
    `descripcion_recurrente` VARCHAR(191) NOT NULL,
    `dia_semana` VARCHAR(191) NOT NULL,
    `hora_inicio` DATETIME(3) NOT NULL,
    `hora_fin` DATETIME(3) NOT NULL,
    `organizador_id` INTEGER NOT NULL,
    `salon_id` INTEGER NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`evento_recurrente_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Matrimonio` (
    `matrimonio_id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre_esposo` VARCHAR(191) NOT NULL,
    `nombre_esposa` VARCHAR(191) NOT NULL,
    `fecha_matrimonio` DATETIME(3) NOT NULL,
    `parroquia_id` INTEGER NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`matrimonio_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `NotificacionReserva` (
    `notificacion_id` INTEGER NOT NULL AUTO_INCREMENT,
    `reserva_id` INTEGER NOT NULL,
    `tipo_notificacion` VARCHAR(191) NOT NULL,
    `fecha_notificacion` DATETIME(3) NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`notificacion_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `OrganizadorEvento` (
    `organizador_id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `telefono` VARCHAR(191) NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`organizador_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Parroquia` (
    `parroquia_id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre_parroquia` VARCHAR(191) NOT NULL,
    `ubicacion_parroquia` VARCHAR(191) NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`parroquia_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PrimeraComunion` (
    `comunion_id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre_comunion` VARCHAR(191) NOT NULL,
    `fecha_nacimiento` DATETIME(3) NOT NULL,
    `fecha_comunion` DATETIME(3) NOT NULL,
    `parroquia_id` INTEGER NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`comunion_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ReservaSalones` (
    `reserva_id` INTEGER NOT NULL AUTO_INCREMENT,
    `salon_id` INTEGER NOT NULL,
    `usuario_id` INTEGER NOT NULL,
    `fecha_inicio` DATETIME(3) NOT NULL,
    `fecha_fin` DATETIME(3) NOT NULL,
    `contrato_alquiler` VARCHAR(191) NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`reserva_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Salon` (
    `salon_id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre_salon` VARCHAR(191) NOT NULL,
    `capacidad` INTEGER NULL,
    `parroquia_id` INTEGER NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`salon_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SyncCalendario` (
    `sync_id` INTEGER NOT NULL AUTO_INCREMENT,
    `correo_usuario` VARCHAR(191) NOT NULL,
    `evento_id` INTEGER NOT NULL,

    PRIMARY KEY (`sync_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Token` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `token` VARCHAR(191) NOT NULL,
    `refrescar_token` VARCHAR(191) NOT NULL,
    `activo` BOOLEAN NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaEliminacion` DATETIME(3) NOT NULL,
    `fechaActualizacion` DATETIME(3) NOT NULL,
    `usuario_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TransaccionFinanciera` (
    `transaccion_id` INTEGER NOT NULL AUTO_INCREMENT,
    `tipo` VARCHAR(191) NOT NULL,
    `monto` DOUBLE NOT NULL,
    `descripcion` VARCHAR(191) NOT NULL,
    `fecha_transaccion` DATETIME(3) NOT NULL,
    `categoria` VARCHAR(191) NOT NULL,
    `reserva_id` INTEGER NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`transaccion_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Usuario` (
    `usuario_id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre_usuario` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `rol` VARCHAR(191) NOT NULL,
    `fechaCreacion` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `fechaActualizacion` DATETIME(3) NULL,

    PRIMARY KEY (`usuario_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Bautizo` ADD CONSTRAINT `Bautizo_parroquia_id_fkey` FOREIGN KEY (`parroquia_id`) REFERENCES `Parroquia`(`parroquia_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Confirmacion` ADD CONSTRAINT `Confirmacion_parroquia_id_fkey` FOREIGN KEY (`parroquia_id`) REFERENCES `Parroquia`(`parroquia_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `EventoParroquial` ADD CONSTRAINT `EventoParroquial_organizador_id_fkey` FOREIGN KEY (`organizador_id`) REFERENCES `OrganizadorEvento`(`organizador_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `EventoParroquial` ADD CONSTRAINT `EventoParroquial_salon_id_fkey` FOREIGN KEY (`salon_id`) REFERENCES `Salon`(`salon_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `EventoRecurrente` ADD CONSTRAINT `EventoRecurrente_organizador_id_fkey` FOREIGN KEY (`organizador_id`) REFERENCES `OrganizadorEvento`(`organizador_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `EventoRecurrente` ADD CONSTRAINT `EventoRecurrente_salon_id_fkey` FOREIGN KEY (`salon_id`) REFERENCES `Salon`(`salon_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Matrimonio` ADD CONSTRAINT `Matrimonio_parroquia_id_fkey` FOREIGN KEY (`parroquia_id`) REFERENCES `Parroquia`(`parroquia_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `NotificacionReserva` ADD CONSTRAINT `NotificacionReserva_reserva_id_fkey` FOREIGN KEY (`reserva_id`) REFERENCES `ReservaSalones`(`reserva_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PrimeraComunion` ADD CONSTRAINT `PrimeraComunion_parroquia_id_fkey` FOREIGN KEY (`parroquia_id`) REFERENCES `Parroquia`(`parroquia_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ReservaSalones` ADD CONSTRAINT `ReservaSalones_salon_id_fkey` FOREIGN KEY (`salon_id`) REFERENCES `Salon`(`salon_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ReservaSalones` ADD CONSTRAINT `ReservaSalones_usuario_id_fkey` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`usuario_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Salon` ADD CONSTRAINT `Salon_parroquia_id_fkey` FOREIGN KEY (`parroquia_id`) REFERENCES `Parroquia`(`parroquia_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SyncCalendario` ADD CONSTRAINT `SyncCalendario_evento_id_fkey` FOREIGN KEY (`evento_id`) REFERENCES `EventoParroquial`(`evento_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Token` ADD CONSTRAINT `Token_usuario_id_fkey` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`usuario_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TransaccionFinanciera` ADD CONSTRAINT `TransaccionFinanciera_reserva_id_fkey` FOREIGN KEY (`reserva_id`) REFERENCES `ReservaSalones`(`reserva_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
