<%-- 
    Document   : index
    Created on : 22-11-2024, 13:07:30
    Author     : Informatica
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Constructora XYZ</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* Colores personalizados */
    :root {
      --primary-color: #a67c52; /* Marrón terroso */
      --secondary-color: #f0e5d3; /* Beige claro */
      --accent-color: #5b5b5b; /* Gris oscuro */
    }

    body {
      background-color: var(--secondary-color);
      color: var(--accent-color);
    }

    .navbar {
      background-color: var(--primary-color);
    }

    .navbar-brand, .nav-link {
      color: white !important;
    }

    .gallery img {
      width: 100%;
      height: auto;
      border-radius: 8px;
    }

    .gallery .col {
      margin-bottom: 20px;
    }
  </style>
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="#">Constructora XYZ</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="#about">Nosotros</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#services">Servicios</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#gallery">Galería</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contact">Contacto</a>
          </li>
            <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a> <!-- Botón de Login -->
                </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Hero Section -->
  <header class="py-5 text-center" style="background-color: var(--primary-color); color: white;">
    <div class="container">
      <h1>Bienvenido a Constructora XYZ</h1>
      <p>Construyendo tus sueños con calidad y confianza</p>
    </div>
  </header>

  <!-- About Section -->
  <section id="about" class="py-5">
    <div class="container">
      <h2 class="text-center mb-4">¿Quiénes somos?</h2>
      <p class="text-center">Somos una empresa dedicada a la construcción de proyectos innovadores y sostenibles. Nuestro objetivo es transformar tus ideas en realidad, asegurando calidad en cada detalle.</p>
    </div>
  </section>

  <!-- Services Section -->
  <section id="services" class="py-5" style="background-color: var(--secondary-color);">
    <div class="container">
      <h2 class="text-center mb-4">Nuestros Servicios</h2>
      <div class="row text-center">
        <div class="col-md-4">
          <h4>Diseño de Proyectos</h4>
          <p>Creación de diseños arquitectónicos personalizados.</p>
        </div>
        <div class="col-md-4">
          <h4>Construcción</h4>
          <p>Ejecutamos proyectos con altos estándares de calidad.</p>
        </div>
        <div class="col-md-4">
          <h4>Remodelaciones</h4>
          <p>Transformamos tus espacios para que luzcan como nuevos.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Gallery Section -->
  <section id="gallery" class="py-5">
    <div class="container">
      <h2 class="text-center mb-4">Galería de Proyectos</h2>
      <div class="row gallery">
        <div class="col-md-4">
            <img src="<%= request.getContextPath() %>/public/img/ejemplo.jpg" alt="Ejemplo de imagen">

        </div>
        <div class="col-md-4">
          <img src="https://via.placeholder.com/350x250" alt="Proyecto 2">
        </div>
        <div class="col-md-4">
          <img src="https://via.placeholder.com/350x250" alt="Proyecto 3">
        </div>
        <div class="col-md-4">
          <img src="https://via.placeholder.com/350x250" alt="Proyecto 4">
        </div>
        <div class="col-md-4">
          <img src="https://via.placeholder.com/350x250" alt="Proyecto 5">
        </div>
        <div class="col-md-4">
          <img src="https://via.placeholder.com/350x250" alt="Proyecto 6">
        </div>
      </div>
    </div>
  </section>

  <!-- Contact Section -->
  <section id="contact" class="py-5" style="background-color: var(--primary-color); color: white;">
    <div class="container">
      <h2 class="text-center mb-4">Contáctanos</h2>
      <p class="text-center">Para más información sobre nuestros servicios, no dudes en comunicarte con nosotros.</p>
      <div class="row justify-content-center">
        <div class="col-md-6">
          <form>
            <div class="mb-3">
              <label for="name" class="form-label">Nombre</label>
              <input type="text" class="form-control" id="name" placeholder="Tu nombre">
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Correo Electrónico</label>
              <input type="email" class="form-control" id="email" placeholder="Tu correo electrónico">
            </div>
            <div class="mb-3">
              <label for="message" class="form-label">Mensaje</label>
              <textarea class="form-control" id="message" rows="3" placeholder="Tu mensaje"></textarea>
            </div>
            <button type="submit" class="btn btn-light">Enviar</button>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="py-3 text-center" style="background-color: var(--accent-color); color: white;">
    <div class="container">
      <p>&copy; 2024 Constructora XYZ. Todos los derechos reservados.</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

