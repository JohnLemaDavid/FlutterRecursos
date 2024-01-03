String getErrorMessage(int statusCode) {
  switch (statusCode) {
    case 400:
      return 'Solicitud incorrecta. Por favor, verifica la información enviada.';
    case 401:
      return 'No autorizado. Verifica tus credenciales.';
    case 403:
      return 'Acceso prohibido. No tienes permiso para acceder al recurso solicitado.';
    case 404:
      return 'Recurso no encontrado. Verifica la URL o el identificador del recurso.';
    case 500:
      return 'Error interno del servidor. Inténtalo de nuevo más tarde. Contactar Sistemas';
    default:
      return 'Algo salió mal. Error desconocido. Contactar Sistemas';
  }
}