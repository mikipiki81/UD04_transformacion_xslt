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
			
			<main>
				<!-- Variables / Al cambiar la posicion del restaurante cambia 1 para 'El clarete' 2 para 'Eneko'-->
				<xsl:variable name="nombre_restaurante" select="'El clarete'"/><!-- variable para cargar el dato del nombre del restaurante -->
				
				<h1><a href="{restaurante[nombrerestaurante=$nombre_restaurante]/informacion}" target="_blank">
					<xsl:value-of select="restaurante[nombrerestaurante=$nombre_restaurante]/nombrerestaurante" /> - <xsl:value-of select="restaurante/ciudad"/>
					</a>
				</h1>
				<xsl:for-each select="restaurante[nombrerestaurante=$nombre_restaurante]/menu">
					
					<article class="restaurante">
						<h3><xsl:value-of select="@tipo"/></h3>
						<xsl:for-each select="plato">
							<p><xsl:value-of select="."/></p>
						</xsl:for-each>
					</article>	
				
				</xsl:for-each>
			</main>

			<footer>
				<address>&#169; 2020 desarrollado por info@birt.eus</address>
			</footer>
		</body>
	</html>

    </xsl:template>
</xsl:stylesheet>