<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Pronóstico del Tiempo</title>
        <link rel="stylesheet" type="text/css" href="estilo.css"/>
      </head>
      <body>
        <!-- Cabecera de la página -->
        <div id="cabecera">
          <table class="menu-navegacion">
            <tr>
              <td><a href="index.html">🏠 Inicio</a></td>
              <td><a href="personal.html">👤 Datos Personales</a></td>
              <td><a href="datos.html">📝 Formulario</a></td>
              <td><a href="foro.html">💬 Foro</a></td>
              <td><a href="tiempo.xml">🌦️ Tiempo</a></td>
            </tr>
          </table>
        </div>

        <!-- Columna izquierda con gif y mensaje -->
        <div id="izquierda">
          <div class="gif-clima">
             <img src="https://i.pinimg.com/originals/88/b4/d3/88b4d35b12e6294d43bf74df65fdeed9.gif" alt="Clima animado" class="gif-clima-animado"/>
          </div>
          <div class="mensaje-bonito animacion-suave">
            ¡Bienvenido al pronóstico del tiempo!<br/>
            Consulta el clima actual y los próximos días.<br/>
            ¡No olvides llevar paraguas si ves nubes! ☔
          </div>
        </div>

        <!-- Contenido principal a la derecha -->
        <div id="derecha">
          <h2 style="text-align:center;">Clima Actual</h2>
          <table class="tabla-clima">
            <tr>
              <th>Día</th>
              <th>Descripción</th>
              <th>Temperatura</th>
              <th>Máxima</th>
              <th>Mínima</th>
              <th>Icono</th>
            </tr>
            <tr>
              <td><xsl:value-of select="clima/fecha_actual/dia"/></td>
              <td><xsl:value-of select="clima/fecha_actual/descripcion"/></td>
              <td><xsl:value-of select="clima/fecha_actual/temperatura"/></td>
              <td><xsl:value-of select="clima/fecha_actual/maxima"/></td>
              <td><xsl:value-of select="clima/fecha_actual/minima"/></td>
              <td><xsl:value-of select="clima/fecha_actual/icono"/></td>
            </tr>
          </table>

          <h2 style="text-align:center;">Pronóstico</h2>
          <table class="tabla-clima">
            <tr>
              <th>Fecha</th>
              <th>Descripción</th>
              <th>Temperatura</th>
              <th>Máxima</th>
              <th>Mínima</th>
              <th>Icono</th>
            </tr>
            <xsl:for-each select="clima/pronostico/dia">
              <tr>
                <td><xsl:value-of select="fecha"/></td>
                <td><xsl:value-of select="descripcion"/></td>
                <td><xsl:value-of select="temperatura"/></td>
                <td><xsl:value-of select="maxima"/></td>
                <td><xsl:value-of select="minima"/></td>
                <td><xsl:value-of select="icono"/></td>
              </tr>
            </xsl:for-each>
          </table>
        </div>

        <!-- Pie de página -->
        <div id="pie">
          <p>© 2025 Curso Virtual de Programación</p>
          <a href="rss.xml" target="_blank">
            <img src="imagenes/rss-icon.png" alt="RSS" style="width:24px; height:24px; vertical-align: middle;"/>
          </a>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>