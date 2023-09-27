<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/"
    xmlns:bio="http://purl.org/vocab/bio/0.1/"
    xmlns:dc="http://purl.org/dc/terms/"
    xmlns:lang="http://purl.org/net/inkel/rdf/schemas/lang/1.1#"
    xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#"
    xmlns:doac="http://ramonantonio.net/doac/0.1/"
    xmlns:menow="http://schema.peoplesdns.com/menow/"
    xmlns:sioc="http://rdfs.org/sioc/ns#"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:admin="http://webns.net/mvcb/"
    xmlns:rel="http://purl.org/vocab/relationship/">
    <xsl:template match="rdf:RDF">
        <html>
            <head>
                <title>Page FOAF</title>
            </head>

            <body>
                <h1>
                    <xsl:value-of select="foaf:Person/foaf:name" />
                </h1>

                <p> Visitez la page d'accueil : <a
                        href="{foaf:Person/foaf:homepage/@rdf:resource}">
                        Ma page d'accueil
                    </a>
                </p>

                <h2>Personnes connues :</h2>

                <ul>
                    <xsl:for-each select="foaf:knows/foaf:Person">
                        <li>
                            <a href="{rdfs:seeAlso/@rdf:resource}">
                                <xsl:value-of select="foaf:name" />
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>