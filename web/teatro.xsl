<?xml version="1.0" encoding="UTF-8"?>
<!--Módulo: DAW
			UD: 04
			Tarea evaluativa: 02 (60%)
			Autor: Jose Maria Garcia Conde
			Fecha: 03/03/2023 
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-doctype"/>

    <xsl:template match="/reservaeventos">
        <html>

        <head>
            <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
            <meta charset="utf-8"/>
            <meta name="description" content="Página principal" />
            <title>titulo de la web</title>
        </head>

        <body>
            <header>
                <img src= "../img/logotipo.png" alt= "Reservas" />
                <a href="teatro.xml">Teatro</a>
                <a href="restaurante.xml">Restaurante</a>
                <a href="festival.xml">Festival</a>
            </header>
            
            <main class="principal">
                <section class="teatro">
                    <h1>PROXIMAS OBRAS DE TEATRO</h1>
                    <ul>
                    <xsl:for-each select="teatro[fechahora[contains(@dia,'2023-01-')]]"><!-- seleccionará sólo las obras de enero de 2023 -->
                    <xsl:sort select="fechahora/@dia" order="descending"/><!-- Ordenacion descendente -->
                        
                        <xsl:choose><!-- Subrayado si menos de 20e -->
                            <xsl:when test="precio>20">
                                <li><xsl:value-of select="fechahora/@dia"/>: <xsl:value-of select="obra"/></li>
                            </xsl:when>
                            <xsl:otherwise>
                                <li><u><xsl:value-of select="fechahora/@dia"/>: <xsl:value-of select="obra"/></u></li>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                    </ul>
                </section>
            </main>

            <footer>
                <address>&#169; 2020 desarrollado por info@birt.eus</address>
            </footer>
        </body>
    </html>
    </xsl:template>

    

</xsl:stylesheet>