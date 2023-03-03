<?xml version="1.0" encoding="UTF-8"?>
<!--Módulo: DAW
			UD: 04
			Tarea evaluativa: 02 (60%)
			Autor: Jose Maria Garcia Conde
			Fecha: 03/03/2023 
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-doctype"/>

    <xsl:template match="/">
        <html>
        <head>
            <link href="./css/estilo.css" rel="stylesheet" type="text/css" />
            <meta charset="utf-8"/>
            <meta name="description" content="Página principal" />
            <title>titulo de la web</title>
        </head>

        <body>
            <header>
                <img src= "./img/logotipo.png" alt= "Reservas" />
                <a href="web/teatro.xml">Teatro</a>
                <a href="web/restaurante.xml">Restaurante</a>
                <a href="web/festival.xml">Festival</a>
            </header>
            
            <main class="principal">
                    <h1>TRABAJANDO CON PLANTILLAS XSLT</h1>
            </main>

            <footer>
                <address>&#169; Desarrollado por info@birt.eus</address>
            </footer>
        </body>
        </html>
    </xsl:template>

    

</xsl:stylesheet>