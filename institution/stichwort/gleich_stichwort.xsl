<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Wed Feb 27 13:46:04 CET 2013 -->

<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:err="http://www.w3.org/2005/xqt-errors"
	exclude-result-prefixes="xs xdt err fn">

	<xsl:output method="xml" indent="yes"/>
	
	
<!-- Leere Knoten werden entfernt-->
	<xsl:template match="@*[.='']"/>
	<xsl:template match="*[not(node())]"/>
	
<!--Nicht dargestellte Zeichen (sog. "Whitespace")  werden im XML Dokument entfernt um Speicherplatz zu sparen-->
	<xsl:strip-space elements="*"/>	


<!--Der Hauptknoten-->	
	<xsl:template match="STICHWORT">
		<xsl:element name="catalog">
			<xsl:apply-templates select="//Gruppe[1]" />
			<xsl:apply-templates select="//Erfassungsdatum[1]" />
			<xsl:apply-templates select="//Objekt" />
			
			<!--<xsl:apply-templates/>-->
		</xsl:element>
	</xsl:template>





<!--Zeitschriftenstammdatensatz-->
<!--Zeitschriftenstammdatensatz-->
<!--Zeitschriftenstammdatensatz-->

	<xsl:template match="//Gruppe">

	<xsl:for-each select="../Objektart[text()='Zeitschriften']">
	
	<xsl:if test="../Reihe[string-length() != 0]">
	
	
		<xsl:element name="record">
		
		
		<xsl:element name="vufind">

			<!--Identifikator-->
				<id>
					<xsl:value-of select="translate(../Reihe, '. /äüö,', '')" />
					<xsl:text>stichwort</xsl:text>
					</id>
					
			<!--recordCreationDate-->
				<recordCreationDate>
						<xsl:value-of select="current-dateTime()"/>
						</recordCreationDate>
					
			<!--recordChangeDate-->
				<recordChangeDate>
					<xsl:value-of select="current-dateTime()"/>
					</recordChangeDate>
	
			<!--recordType-->
				<recordType>
					<xsl:text>library</xsl:text>
					</recordType>
				
			</xsl:element>

		<xsl:element name="institution">

			<!--institutionShortname-->			
				<institutionShortname>
					<xsl:text>Stichwort</xsl:text>
					</institutionShortname>
	
			<!--institutionFullname-->			
				<institutionFull>
					<xsl:text>STICHWORT, Archiv der Frauen- und Lesbenbewegung, Bibliothek · Dokumentation · Multimedia</xsl:text>
					</institutionFull>
						
				<institutionID>
					<xsl:text>stichwort</xsl:text>
					</institutionID>
						
			<!--collection-->				
				<collection><xsl:text>stichwort</xsl:text></collection>
	
			<!--isil-->					
				<isil><xsl:text>AT-STICHWORT</xsl:text></isil>
	
			<!--linkToWebpage-->			
				<link><xsl:text>http://www.ida-dachverband.de/einrichtungen/oesterreich/stichwort/</xsl:text></link>
	
			<!--geoLocation-->				
				<geoLocation>
					<latitude>48.197364</latitude>
					<longitude>16.370382</longitude>
					</geoLocation>

			</xsl:element>

		<xsl:element name="dataset">
		
<!--FORMAT-->

	<!--typeOfRessource-->
					<typeOfRessource><xsl:text>text</xsl:text></typeOfRessource>
	<!--format Objektartinformationen-->
					<format><xsl:text>Periodika</xsl:text></format>
	<!--searchfilter-->
					<searchfilter><xsl:text>Zeitschrift</xsl:text></searchfilter>

<!--TITLE-->
	
	<!--title Titelinformationen-->
				<title>
					<xsl:value-of select="../Reihe" />
					</title>
				<title_short>
				<xsl:value-of select="../Reihe" />
					</title_short>

<!--IDENTIFIER-->

	<!--isbn issn-->
				<xsl:apply-templates select="../ISBN_x047x_ISSN" />

<!--PUBLISHING-->
			
	<!--placeOfPublication-->
				<xsl:apply-templates select="../Ort" />
	<!--publisher-->
				<xsl:apply-templates select="../Verlag" />
		
	<!--publishDate-->
				<xsl:apply-templates select="../Jahr" />
				<xsl:apply-templates select="../Band-Nr_x046x_" />

			</xsl:element>
			
		<xsl:element name="functions">
			
			<hierarchyFields>
					
					<hierarchy_top_id><xsl:value-of select="translate(../Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></hierarchy_top_id>
					<hierarchy_top_title><xsl:value-of select="../Reihe" /></hierarchy_top_title>
				
					<is_hierarchy_id><xsl:value-of select="translate(../Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></is_hierarchy_id>
					<is_hierarchy_title><xsl:value-of select="../Reihe" /></is_hierarchy_title>
				
					</hierarchyFields>
			</xsl:element>
		
		
		</xsl:element>
		
		</xsl:if>
		</xsl:for-each>





<!--Zeitschriftenstammdatensatz-->
<!--Zeitschriftenstammdatensatz-->
<!--Zeitschriftenstammdatensatz-->	
		
<xsl:for-each select="../Objektart[text()='Zeitschriftenartikel (Österr. 72 - 90)']">
	
	<xsl:if test="../Reihe[string-length() != 0]">
	
		<xsl:element name="record">
		
		<xsl:element name="vufind">

			<!--Identifikator-->
				<id>
					<xsl:value-of select="translate(../Reihe, '. /äüö,', '')" />
					<xsl:text>stichwort</xsl:text>
					</id>
					
			<!--recordCreationDate-->
				<recordCreationDate>
						<xsl:value-of select="current-dateTime()"/>
						</recordCreationDate>
					
			<!--recordChangeDate-->
				<recordChangeDate>
					<xsl:value-of select="current-dateTime()"/>
					</recordChangeDate>
	
			<!--recordType-->
				<recordType>
					<xsl:text>library</xsl:text>
					</recordType>
				
			</xsl:element>

		<xsl:element name="institution">

			<!--institutionShortname-->			
				<institutionShortname>
					<xsl:text>Stichwort</xsl:text>
					</institutionShortname>
	
			<!--institutionFullname-->			
				<institutionFull>
					<xsl:text>STICHWORT, Archiv der Frauen- und Lesbenbewegung, Bibliothek · Dokumentation · Multimedia</xsl:text>
					</institutionFull>
						
				<institutionID>
					<xsl:text>stichwort</xsl:text>
					</institutionID>
						
			<!--collection-->				
				<collection><xsl:text>stichwort</xsl:text></collection>
	
			<!--isil-->					
				<isil><xsl:text>AT-STICHWORT</xsl:text></isil>
	
			<!--linkToWebpage-->			
				<link><xsl:text>http://www.ida-dachverband.de/einrichtungen/oesterreich/stichwort/</xsl:text></link>
	
			<!--geoLocation-->				
				<geoLocation>
					<latitude>48.197364</latitude>
					<longitude>16.370382</longitude>
					</geoLocation>

			</xsl:element>

		<xsl:element name="dataset">
		
<!--FORMAT-->

	<!--typeOfRessource-->
					<typeOfRessource><xsl:text>text</xsl:text></typeOfRessource>
	<!--format Objektartinformationen-->
					<format><xsl:text>Periodika</xsl:text></format>
	<!--searchfilter-->
					<searchfilter><xsl:text>Zeitschrift</xsl:text></searchfilter>

<!--TITLE-->
	
	<!--title Titelinformationen-->
				<title>
					<xsl:value-of select="../Reihe" />
					</title>
				<title_short>
				<xsl:value-of select="../Reihe" />
					</title_short>

<!--IDENTIFIER-->

	<!--isbn issn-->
				<xsl:apply-templates select="../ISBN_x047x_ISSN" />

<!--PUBLISHING-->
			
	<!--placeOfPublication-->
				<xsl:apply-templates select="../Ort" />
	<!--publisher-->
				<xsl:apply-templates select="../Verlag" />

			</xsl:element>
			
		<xsl:element name="functions">
			
			<hierarchyFields>
					
					<hierarchy_top_id><xsl:value-of select="translate(../Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></hierarchy_top_id>
					<hierarchy_top_title><xsl:value-of select="../Reihe" /></hierarchy_top_title>
				
					<is_hierarchy_id><xsl:value-of select="translate(../Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></is_hierarchy_id>
					<is_hierarchy_title><xsl:value-of select="../Reihe" /></is_hierarchy_title>
				
					</hierarchyFields>
			</xsl:element>
		
		
		</xsl:element>
		
		</xsl:if>
		</xsl:for-each>

		
	</xsl:template>






<!--Zeitschriftenheft-->
<!--Zeitschriftenheft-->
<!--Zeitschriftenheft-->

	<xsl:template match="//Erfassungsdatum">

	<xsl:for-each select="../Objektart[text()='Zeitschriftenartikel (Österr. 72 - 90)']">
	
	<xsl:if test="../Reihe[string-length() != 0]">
	
	
		<xsl:element name="record">
		
		
		<xsl:element name="vufind">

			<!--Identifikator-->
				<id>
					<xsl:value-of select="translate(../Reihe, '. /äüö,', '')" />
					<xsl:value-of select="replace(../Jahr[1],'/','')"/>
					<xsl:value-of select="replace(../Band-Nr_x046x_[1],'/','')"/>
					<!--<xsl:value-of select="translate(../Band-Nr_x046x_[1], translate(.,'0123456789 /', ''), '')" />-->
					<!--<xsl:value-of select="translate(../Jahr[1], translate(.,'0123456789', ''), '')" />-->
					<xsl:text>stichwort</xsl:text>
					</id>
					
			<!--recordCreationDate-->
				<recordCreationDate>
						<xsl:value-of select="current-dateTime()"/>
						</recordCreationDate>
					
			<!--recordChangeDate-->
				<recordChangeDate>
					<xsl:value-of select="current-dateTime()"/>
					</recordChangeDate>
	
			<!--recordType-->
				<recordType>
					<xsl:text>library</xsl:text>
					</recordType>
				
			</xsl:element>

		<xsl:element name="institution">

			<!--institutionShortname-->			
				<institutionShortname>
					<xsl:text>Stichwort</xsl:text>
					</institutionShortname>
	
			<!--institutionFullname-->			
				<institutionFull>
					<xsl:text>STICHWORT, Archiv der Frauen- und Lesbenbewegung, Bibliothek · Dokumentation · Multimedia</xsl:text>
					</institutionFull>
						
				<institutionID>
					<xsl:text>stichwort</xsl:text>
					</institutionID>
						
			<!--collection-->				
				<collection><xsl:text>stichwort</xsl:text></collection>
	
			<!--isil-->					
				<isil><xsl:text>AT-STICHWORT</xsl:text></isil>
	
			<!--linkToWebpage-->			
				<link><xsl:text>http://www.ida-dachverband.de/einrichtungen/oesterreich/stichwort/</xsl:text></link>
	
			<!--geoLocation-->				
				<geoLocation>
					<latitude>48.197364</latitude>
					<longitude>16.370382</longitude>
					</geoLocation>

			</xsl:element>

		<xsl:element name="dataset">
		
<!--FORMAT-->

	<!--typeOfRessource-->
					<typeOfRessource><xsl:text>text</xsl:text></typeOfRessource>
	<!--format Objektartinformationen-->
					<format><xsl:text>Periodika</xsl:text></format>
	<!--searchfilter-->
					<searchfilter><xsl:text>Zeitschriftenheft</xsl:text></searchfilter>

<!--TITLE-->
	
	<!--title Titelinformationen-->
				<title>
					<xsl:value-of select="../Reihe" />
					<xsl:text> </xsl:text>
					<xsl:value-of select="../Jg_x046x_"></xsl:value-of>
					<xsl:text>(</xsl:text>
					<xsl:value-of select="../Jahr"></xsl:value-of>
					<xsl:text>)</xsl:text>
					<xsl:value-of select="../Band-Nr_x046x_"></xsl:value-of>
					</title>
				<title_short>
				<xsl:value-of select="../Reihe" />
					</title_short>

<!--IDENTIFIER-->

	<!--isbn issn-->
				<xsl:apply-templates select="../ISBN_x047x_ISSN" />

<!--PUBLISHING-->
	
	<!--placeOfPublication-->
				<xsl:apply-templates select="../Ort" />
	<!--publisher-->
				<xsl:apply-templates select="../Verlag" />

	<!--publishDate-->
				<xsl:apply-templates select="../Jahr" />
				<xsl:apply-templates select="../Band-Nr_x046x_" />

			</xsl:element>
			
		<xsl:element name="functions">
			
			<hierarchyFields>
					
					<hierarchy_top_id><xsl:value-of select="translate(../Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></hierarchy_top_id>
					<hierarchy_top_title><xsl:value-of select="../Reihe" /></hierarchy_top_title>
				
					<hierarchy_parent_id><xsl:value-of select="translate(../Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></hierarchy_parent_id>
					<hierarchy_parent_title><xsl:value-of select="../Reihe" /></hierarchy_parent_title>
					
					<is_hierarchy_id>
						<xsl:value-of select="translate(../Reihe, '. /äüö,', '')" />
						<xsl:value-of select="replace(../Jahr[1],'/','')"/>
						<xsl:value-of select="replace(../Band-Nr_x046x_[1],'/','')"/>
	<!--					<xsl:value-of select="translate(../Jahr[1], translate(.,'0123456789', ''), '')" />
						<xsl:value-of select="translate(../Band-Nr_x046x_[1], translate(.,'0123456789', ''), '')" />
	--><!--					<xsl:value-of select="../Jahr" />
						<xsl:value-of select="../Band-Nr_x046x_" />-->
						<xsl:text>stichwort</xsl:text></is_hierarchy_id>
					<is_hierarchy_title><xsl:value-of select="../Reihe" /></is_hierarchy_title>
					
					<hierarchy_sequence>
						<xsl:value-of select="../Jahr"></xsl:value-of>
						</hierarchy_sequence>
					
					</hierarchyFields>
			</xsl:element>
		
		
		</xsl:element>
		
		</xsl:if>
		</xsl:for-each>


	</xsl:template>






<xsl:template match="Objekt">	

<!--Umwandlungen werden nur bei diesem Objektarten durchgeführt-->
		<!--<xsl:if test="(Objektart[text()='Bücher u. Graue Literatur']) or (Objektart[text()='Beiträge in Sammelwerken'])">-->
		
		
		
		
		
		<!--
		<xsl:if test="Objektart[text()='Bücher u. Graue Literatur']">
		<xsl:if test="Objektart[text()='Zeitschriftenartikel (Österr. 72 - 90)']">
		<xsl:if test="Objektart[text()='Zeitschriften']">
		<xsl:if test="Objektart[text()='Transparente']">
		<xsl:if test="Objektart[text()='Objekte']">
		
		-->
		
		<xsl:variable name="id" select="Objektnummer" />
		<xsl:element name="record">
			<xsl:attribute name="id">
				<xsl:value-of select="$id" />
			</xsl:attribute>	
	
	
	
<!--vufind_______________________________vufind_______________________________vufind-->
<!--vufind_______________________________vufind_______________________________vufind-->
<!--vufind_______________________________vufind_______________________________vufind-->
<!--vufind_______________________________vufind_______________________________vufind-->
<!--vufind_______________________________vufind_______________________________vufind-->

<xsl:element name="vufind">
		
	<!--Identifikator-->
				<id>
					<xsl:value-of select="Objektnummer" />
					<xsl:text>stichwort</xsl:text>
					</id>

	<!--recordCreationDate-->
				<recordCreationDate>
						<xsl:value-of select="current-dateTime()"/>
						</recordCreationDate>
					
	<!--recordChangeDate-->
				<recordChangeDate>
					<xsl:value-of select="current-dateTime()"/>
					</recordChangeDate>
	
	<!--recordType-->
				<xsl:choose>
					<xsl:when test="Objektart[text()='Videos']">
						<recordType>
							<xsl:text>archive</xsl:text>
							</recordType>
						</xsl:when>
					<xsl:when test="Objektart[text()='Plakate']">
						<recordType>
							<xsl:text>archive</xsl:text>
							</recordType>
						</xsl:when>
					<xsl:when test="Objektart[text()='Transparente']">
						<recordType>
							<xsl:text>archive</xsl:text>
							</recordType>
						</xsl:when>
					<xsl:when test="Objektart[text()='Objekte']">
						<recordType>
							<xsl:text>archive</xsl:text>
							</recordType>
						</xsl:when>
					<xsl:otherwise>
						<recordType>
							<xsl:text>library</xsl:text>
							</recordType>
						</xsl:otherwise>
					</xsl:choose>
				
				
				
</xsl:element>


<!--institution_______________________________institution_______________________________institution-->
<!--institution_______________________________institution_______________________________institution-->
<!--institution_______________________________institution_______________________________institution-->
<!--institution_______________________________institution_______________________________institution-->
<!--institution_______________________________institution_______________________________institution-->


<xsl:element name="institution">
	
<!--institutionShortname-->			<institutionShortname>
							<xsl:text>Stichwort</xsl:text>
							</institutionShortname>
	
<!--institutionFullname-->			<institutionFull>
							<xsl:text>STICHWORT, Archiv der Frauen- und Lesbenbewegung, Bibliothek · Dokumentation · Multimedia</xsl:text>
							</institutionFull>
						
						<institutionID>
							<xsl:text>stichwort</xsl:text>
							</institutionID>
						
<!--collection-->				<collection><xsl:text>stichwort</xsl:text></collection>
	
<!--isil-->					<isil><xsl:text>AT-STICHWORT</xsl:text></isil>
	
<!--linkToWebpage-->			<link><xsl:text>http://www.ida-dachverband.de/einrichtungen/oesterreich/stichwort/</xsl:text></link>
	
<!--geoLocation-->				<geoLocation>
							<latitude>48.197364</latitude>
							<longitude>16.370382</longitude>
							</geoLocation>
			
</xsl:element>


	
<!--Variablen_______________________________________________________Variablen-->
<!--Variablen_______________________________________________________Variablen-->
<!--Variablen_______________________________________________________Variablen-->
		<!--
	0. Erklärung _ für einige Operationen wandle ich Angaben in Variablen um. FAUST kann das Datum nur
		auf eine Weise ausgeben [30.04.1982], so dass dieses nachträglich für MARC angepasst
		werden muss [820430] -->
	
		<!--Variable für die Ausgabe des Datums _ hier wird das Tagesdatum verwendet-->
			<xsl:variable name="date" select="Erfassungsdatum"/>
		<!--Variable für die Ausgabe des Änderungsdatums-->
			<xsl:variable name="change" select="Erfassungsdatum"/>
		<xsl:variable name="s_sachtitel" select="translate(in_x058x_[1], translate(.,'0123456789', ''), '')"/>






<!--dataset_______________________________dataset_______________________________dataset-->
<!--dataset_______________________________dataset_______________________________dataset-->
<!--dataset_______________________________dataset_______________________________dataset-->
<!--dataset_______________________________dataset_______________________________dataset-->
<!--dataset_______________________________dataset_______________________________dataset-->	










<!--Buch__________________________Monographie___________________________Sammelband-->


<xsl:if test="Objektart[text()='Bücher u. Graue Literatur']">

<xsl:element name="dataset">

<!--FORMAT-->

	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>text</xsl:text></typeOfRessource>
	<!--format-->
				<xsl:choose>
					<xsl:when test="Gruppe='1D'">
						<format><xsl:text>Hochschulschrift</xsl:text></format>
						</xsl:when>
					<xsl:otherwise>
						<format><xsl:text>Buch</xsl:text></format>
						</xsl:otherwise>
					</xsl:choose>
				
	<!--searchfilter-->
				<xsl:choose>
					<xsl:when test="Gruppe='1D'">
						<searchfilter><xsl:text>Hochschulschrift</xsl:text></searchfilter>
						</xsl:when>
					<xsl:when test="enth_x132x_lt_x058x_!=''">
						<searchfilter>
							<xsl:text>Sammelband</xsl:text>
							</searchfilter>
						</xsl:when>
					<xsl:otherwise>
						<searchfilter><xsl:text>Monografie</xsl:text></searchfilter>
						</xsl:otherwise>
					</xsl:choose>

	<!--documentType-->
				<xsl:choose>
					<xsl:when test="enth_x132x_lt_x058x_!=''">
						<documentType>
							<xsl:text>Sammelband</xsl:text>
							</documentType>
						</xsl:when>
					<xsl:otherwise>
						<documentType>
						<xsl:text>Monografie</xsl:text>
							</documentType>
						</xsl:otherwise>
					</xsl:choose>

<!--TITLE-->
	
	<!--title-->
				<xsl:apply-templates select="Titel" />
				
<!--RESPONSIBLE-->
	
	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				<xsl:apply-templates select="et_al" />
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<xsl:apply-templates select="Reihe" />

<!--IDENTIFIER-->

	<!--isbn issn-->
				<xsl:apply-templates select="ISBN_x047x_ISSN" />

<!--PUBLISHING-->		

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Ort" />
	<!--publisher-->
				<xsl:apply-templates select="Verlag" />

<!--PHYSICAL INFORMATION-->
	
	<!--physical-->
				<xsl:apply-templates select="Seiten" />
				
<!--CONTENTRELATED INFORMATION-->
	
	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>

<!--OTHER-->
	
	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

	</xsl:element>

	<xsl:if test="enth_x132x_lt_x058x_[1]!=''">
		<xsl:apply-templates select="enth_x132x_lt_x058x_[1]" />
		</xsl:if>
		
</xsl:if>

	
	
	


<!--Beiträge in Sammelwerken__________________________Beiträge in Sammelwerken___________________________Beiträge in Sammelwerken-->


<xsl:if test="Objektart[text()='Beiträge in Sammelwerken']">

<xsl:element name="dataset">

<!--FORMAT-->
	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>text</xsl:text></typeOfRessource>
	<!--format-->
				<format><xsl:text>Artikel</xsl:text></format>
	<!--searchfilter-->
				<searchfilter><xsl:text>Artikel</xsl:text></searchfilter>
	<!--documentType-->
				<!--<documentType><xsl:text>Beiträge in Sammelwerken</xsl:text></documentType>-->
				
<!--TITLE-->
	
	<!--title-->
				<xsl:apply-templates select="Titel" />

<!--RESPONSIBLE-->

	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				<xsl:apply-templates select="et_al" />
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<xsl:apply-templates select="Reihe" />

<!--IDENTIFIER-->

	<!--isbn issn-->
				<xsl:apply-templates select="ISBN_x047x_ISSN" />

<!--PUBLISHING-->

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Ort" />
	<!--publisher-->
				<xsl:apply-templates select="Verlag" />
	<!--sourceInfo-->
				<xsl:variable name="relatedID" select="translate(in_x058x_, translate(.,'0123456789', ''), '')" />
				<sourceInfo>
					<xsl:value-of select="//Objekt[Objektnummer=$relatedID]/Titel" />
					<!--<xsl:text> (</xsl:text>
					<xsl:value-of select="Jahr" />
					<xsl:text>)</xsl:text>
					<xsl:if test="Seiten!=''">
						<xsl:text>,</xsl:text>
						<xsl:value-of select="Seiten" />
						</xsl:if>-->
					
					</sourceInfo>
				
	
				
<!--PHYSICAL INFORMATION-->

	<!--physical-->
				<xsl:apply-templates select="Seiten" />

<!--CONTENTRELATED INFORMATION-->

	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>

<!--OTHER-->

	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

</xsl:element>

<!--	<xsl:if test="in_x058x_[1]!=''">-->
		<xsl:apply-templates select="in_x058x_" />
		<!--</xsl:if>-->
		
</xsl:if>

	


<!--Zeitschriften__________________________Zeitschriften___________________________Zeitschriften-->


<xsl:if test="Objektart[text()='Zeitschriften']">

<xsl:element name="dataset">

<!--FORMAT-->

	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>text</xsl:text></typeOfRessource>
	<!--format-->
				<format><xsl:text>Periodika</xsl:text></format>
	<!--searchfilter-->
				<searchfilter><xsl:text>Zeitschriftenheft</xsl:text></searchfilter>
	<!--documentType-->
				<!--<documentType><xsl:text>Zeitschriftenheft</xsl:text></documentType>-->

<!--TITLE-->

	<!--title-->
				<xsl:choose>
					<xsl:when test="Titel[string-length() != 0]">
						<xsl:apply-templates select="Titel" />
						</xsl:when>
					<xsl:otherwise>
						<title>
							<xsl:value-of select="Reihe" />
							</title>
						<title_short>
							<xsl:value-of select="Reihe" />
							</title_short>
						</xsl:otherwise>
					</xsl:choose>
				
				

<!--RESPONSIBLE-->

	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				<xsl:apply-templates select="et_al" />
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<!--<xsl:apply-templates select="Reihe" />-->

<!--IDENTIFIER-->

	<!--isbn issn-->
				<xsl:apply-templates select="ISBN_x047x_ISSN" />

<!--PUBLISHING-->

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Ort" />
	<!--publisher-->
				<xsl:apply-templates select="Verlag" />

<!--PHYSICAL INFORMATION-->

	<!--physical-->
				<xsl:apply-templates select="Seiten" />
	<!--sourceInfo-->
				<xsl:if test="Reihe[string-length() != 0]">
				<sourceInfo>
					<xsl:value-of select="Reihe" />
					<!--<xsl:text> (</xsl:text>
					<xsl:value-of select="Jahr" />
					<xsl:text>)</xsl:text>
					<xsl:value-of select="Band-Nr_x046x_" />-->
					</sourceInfo>
					</xsl:if>

<!--CONTENTRELATED INFORMATION-->
	
	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>

<!--DETAILS FOR JOURNAL RELATED CONTENT-->

	<!--issue-->
				<xsl:apply-templates select="Band-Nr_x046x_" />
	<!--volume-->
				<xsl:apply-templates select="Jg_x046x_" />

<!--OTHER-->

	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

</xsl:element>
	
	<xsl:if test="(Reihe[string-length() != 0]) or (enth_x132x_lt_x058x_[1][string-length() != 0])">
	<xsl:element name="functions">
			
			<hierarchyFields>
					
					<xsl:choose>
						<xsl:when test="Reihe[string-length() != 0]">
							<hierarchy_top_id><xsl:value-of select="translate(Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></hierarchy_top_id>
							<hierarchy_top_title><xsl:value-of select="Reihe" /></hierarchy_top_title>
							
							<hierarchy_parent_id><xsl:value-of select="translate(Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></hierarchy_parent_id>
							<hierarchy_parent_title><xsl:value-of select="Reihe" /></hierarchy_parent_title>
							
							</xsl:when>
						<xsl:otherwise>
							<hierarchy_top_id><xsl:value-of select="Objektnummer" /><xsl:text>stichwort</xsl:text></hierarchy_top_id>
							<hierarchy_top_title>
								<xsl:choose>
									<xsl:when test="Titel[string-length() != 0]">
										<xsl:value-of select="normalize-space(Titel)"/>
										</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="normalize-space(Reihe)"/>
										</xsl:otherwise>
									</xsl:choose>
								</hierarchy_top_title>
							</xsl:otherwise>
						</xsl:choose>
				
					<is_hierarchy_id><xsl:value-of select="Objektnummer" /><xsl:text>stichwort</xsl:text></is_hierarchy_id>
					<is_hierarchy_title>
						<xsl:choose>
							<xsl:when test="Titel[string-length() != 0]">
								<xsl:value-of select="normalize-space(Titel)"/>
								</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="normalize-space(Reihe)"/>
								</xsl:otherwise>
							</xsl:choose>
						</is_hierarchy_title>
					
					<hierarchy_sequence>
						<xsl:choose>
							<xsl:when test="Titel[string-length() != 0]">
								<xsl:value-of select="normalize-space(substring(Titel,1,3))"/>
								</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="normalize-space(substring(Reihe,1,3))"/>
								</xsl:otherwise>
							</xsl:choose>
						</hierarchy_sequence>
					</hierarchyFields>
			</xsl:element>
			</xsl:if>
	
	<!--<xsl:if test="enth_x132x_lt_x058x_[1]!=''">
		<xsl:apply-templates select="enth_x132x_lt_x058x_[1]" />
		</xsl:if>-->
		
</xsl:if>





<!--Artikel in Zeitschriften__________________________Artikel in Zeitschriften___________________________Artikel in Zeitschriften-->


<xsl:if test="Objektart[text()='Artikel in Zeitschriften']">

<xsl:element name="dataset">

<!--FORMAT-->

	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>text</xsl:text></typeOfRessource>
	<!--format-->
				<format><xsl:text>Artikel</xsl:text></format>
	<!--searchfilter-->
				<searchfilter><xsl:text>Artikel</xsl:text></searchfilter>
	<!--documentType-->
				<!--<documentType><xsl:text>Artikel in Zeitschriften</xsl:text></documentType>-->

<!--TITLE-->
	
	<!--title-->
				<xsl:apply-templates select="Titel" />

<!--RESPONSIBLE-->

	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				<xsl:apply-templates select="et_al" />
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<!--<xsl:apply-templates select="Reihe" />-->

<!--IDENTIFIER-->

	<!--isbn issn-->
				<xsl:apply-templates select="ISBN_x047x_ISSN" />

<!--PUBLISHING-->		

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Ort" />
	<!--publisher-->
				<xsl:apply-templates select="Verlag" />
	<!--sourceInfo-->
				<sourceInfo>
					<xsl:choose>
						<xsl:when test="in_x058x_">
							<xsl:variable name="relatedID" select="translate(in_x058x_[1], translate(.,'0123456789', ''), '')"/>
							<xsl:value-of select="//Objekt[Objektnummer=$relatedID]/Titel" />
							</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="Reihe" />
							</xsl:otherwise>
						</xsl:choose>
					<!--<xsl:value-of select="Reihe" />-->
					<!--<xsl:text> (</xsl:text>
					<xsl:value-of select="Jahr" />
					<xsl:text>)</xsl:text>
					<xsl:value-of select="Band-Nr_x046x_" />
					<xsl:text>, </xsl:text>
					<xsl:value-of select="Seiten" />-->
					</sourceInfo>
	
<!--PHYSICAL INFORMATION-->

	<!--physical-->
				<xsl:apply-templates select="Seiten" />

<!--CONTENTRELATED INFORMATION-->

	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>

<!--DETAILS FOR JOURNAL RELATED CONTENT-->

	<!--issue Heft-->
				<xsl:apply-templates select="Jg_x046x_" />
	<!--volume Band-->
				<xsl:apply-templates select="Band-Nr_x046x_" />
<!--OTHER-->

	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

</xsl:element>

<!--	<xsl:if test="in_x058x_[1]!=''">-->
		<xsl:apply-templates select="in_x058x_" />
		<!--</xsl:if>-->
		
</xsl:if>








<!--Videos____________________________Videos__________________________________Videos-->


<xsl:if test="Objektart[text()='Videos']">

<xsl:element name="dataset">


<!--FORMAT-->

	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>moving image</xsl:text></typeOfRessource>
	
	<!--format-->
				<format><xsl:text>Film</xsl:text></format>
	<!--searchfilter-->
				<searchfilter><xsl:text>Film</xsl:text></searchfilter>
	<!--documentType-->
				<xsl:apply-templates select="Format[string-length() != 0]" />
				<xsl:apply-templates select="Anlass[string-length() != 0]" />
						
<!--TITLE-->
	
	<!--title-->
				<xsl:apply-templates select="Titel[1]" />

<!--RESPONSIBLE-->
	
	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<xsl:apply-templates select="Reihe" />

<!--IDENTIFIER-->

<!--PUBLISHING-->		

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Land" />
	
<!--PHYSICAL INFORMATION-->
	
	<!--runTime-->
				<xsl:apply-templates select="Seiten" />	
	
<!--CONTENTRELATED INFORMATION-->
	
	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>
	
	<!--weitere Anmerkungen-->
				<xsl:apply-templates select="Zusatzangabe" />
	
<!--OTHER-->

	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

	</xsl:element>
	</xsl:if>





<!--Plakate____________________________Plakate__________________________________Plakate-->


<xsl:if test="Objektart[text()='Plakate']">

<xsl:element name="dataset">


<!--FORMAT-->

	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>image</xsl:text></typeOfRessource>
	<!--format-->
				<format><xsl:text>Visuelle Materialien</xsl:text></format>
	<!--searchfilter-->
				<searchfilter><xsl:text>Plakat</xsl:text></searchfilter>
	<!--documentType-->
				<xsl:apply-templates select="Format[string-length() != 0]" />
				<xsl:apply-templates select="Anlass[string-length() != 0]" />
						
<!--TITLE-->
	
	<!--title-->
				<xsl:apply-templates select="Titel[1]" />

<!--RESPONSIBLE-->
	
	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<xsl:apply-templates select="Reihe" />

<!--IDENTIFIER-->

<!--PUBLISHING-->		

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Ort" />
	
<!--PHYSICAL INFORMATION-->
	
	<!--runTime-->
				<xsl:apply-templates select="Seiten" />	
	
<!--CONTENTRELATED INFORMATION-->
	
	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>
	
	<!--weitere Anmerkungen-->
				<xsl:apply-templates select="Zusatzangabe" />
	
<!--OTHER-->

	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

	</xsl:element>
	</xsl:if>







<!--Transparente____________________________Transparente__________________________________Transparente-->


<xsl:if test="Objektart[text()='Transparente']">

<xsl:element name="dataset">


<!--FORMAT-->

	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>image</xsl:text></typeOfRessource>
	
	<!--format-->
				<format><xsl:text>Objekte</xsl:text></format>	
	<!--searchfilter-->
				<searchfilter>
					<xsl:choose>
						<xsl:when test="contains(Zusatzangabe[text()],'T-Shirt')">
							<xsl:text>T-Shirt</xsl:text>
							</xsl:when>
						<xsl:when test="contains(Zusatzangabe[text()],'Tasche')">
							<xsl:text>Tasche</xsl:text>
							</xsl:when>
						<xsl:otherwise>
							<!--hier wird nur die Einzahl genommen um stringent zu bleiben-->
							<xsl:text>Transparent</xsl:text>
							<!--<xsl:value-of select="Objektart" />-->
							</xsl:otherwise>
						</xsl:choose>
					</searchfilter>
	<!--documentType-->
				<!--<documentType>
					<xsl:choose>
						<xsl:when test="contains(Zusatzangabe[text()],'T-Shirt')">
							<xsl:text>T-Shirt</xsl:text>
							</xsl:when>
						<xsl:when test="contains(Zusatzangabe[text()],'Tasche')">
							<xsl:text>Tasche</xsl:text>
							</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="Objektart" />
							</xsl:otherwise>
						</xsl:choose>
					</documentType>-->
				<!--<xsl:apply-templates select="Anlass[string-length() != 0]" />-->
						
<!--TITLE-->
	
	<!--title-->
				<xsl:apply-templates select="Titel[1]" />

<!--RESPONSIBLE-->
	
	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<xsl:apply-templates select="Reihe" />

<!--IDENTIFIER-->

<!--PUBLISHING-->		

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Ort" />
	
<!--PHYSICAL INFORMATION-->
	
	<!--dimension-->
				<xsl:apply-templates select="Format[string-length() != 0]" />
	
<!--CONTENTRELATED INFORMATION-->
	
	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>
	
	<!--weitere Anmerkungen-->
				<!--<xsl:apply-templates select="Zusatzangabe" />-->
	
<!--OTHER-->

	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

	</xsl:element>
	</xsl:if>







<!--Objekte____________________________Objekte__________________________________Objekte-->


<xsl:if test="Objektart[text()='Objekte']">

<xsl:element name="dataset">



<!--FORMAT-->

	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>image</xsl:text></typeOfRessource>
	
	<!--format-->
				<format><xsl:text>Objekte</xsl:text></format>
	<!--searchfilter-->
				<searchfilter><xsl:text>Button</xsl:text></searchfilter>
	<!--documentType-->
				<!--<xsl:if test="contains(Titel[1],'Button')">
					<documentType>
						<xsl:text>Button</xsl:text>
						</documentType>
					</xsl:if>-->
				
				<!--<xsl:apply-templates select="Anlass[string-length() != 0]" />-->
						
<!--TITLE-->
	
	<!--title-->
				<xsl:apply-templates select="Titel[1]" />

<!--RESPONSIBLE-->
	
	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<xsl:apply-templates select="Reihe" />

<!--IDENTIFIER-->

<!--PUBLISHING-->		

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Ort" />
	
<!--PHYSICAL INFORMATION-->
	
	<!--dimension-->
				<xsl:apply-templates select="Format[string-length() != 0]" />
	
<!--CONTENTRELATED INFORMATION-->
	
	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>
	
	<!--weitere Anmerkungen-->
				<!--<xsl:apply-templates select="Zusatzangabe" />-->
	
<!--OTHER-->

	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

	</xsl:element>
	</xsl:if>












<!--ZS-Artel____________________________ZS-Artel__________________________________ZS-Artel-->


<xsl:if test="Objektart[text()='Zeitschriftenartikel (Österr. 72 - 90)']">

<xsl:element name="dataset">



<!--FORMAT-->

	<!--typeOfRessource-->
				<typeOfRessource><xsl:text>text</xsl:text></typeOfRessource>
	<!--format-->
				<format><xsl:text>Artikel</xsl:text></format>
	<!--searchfilter-->
				<searchfilter><xsl:text>Artikel</xsl:text></searchfilter>
	<!--documentType-->
					<!--<documentType>
						<xsl:value-of select="Objektart" />
						</documentType>-->
				
				<!--<xsl:apply-templates select="Anlass[string-length() != 0]" />-->
						
<!--TITLE-->
	
	<!--title-->
				<xsl:apply-templates select="Titel[1]" />

<!--RESPONSIBLE-->
	
	<!--author-->
				<xsl:apply-templates select="Autorin_x032x_1" />
				<xsl:apply-templates select="Autorin_x032x_2" />
				
	<!--editor-->
				<xsl:apply-templates select="Hg_x046x__x032x_von" />
	<!--contributor-->
				<xsl:apply-templates select="_x154x_bersetzung" />
	<!--series-->
				<xsl:apply-templates select="Reihe" />

<!--IDENTIFIER-->

<!--PUBLISHING-->		

	<!--displayPublishDate-->
				<xsl:apply-templates select="Jahr" />
	<!--placeOfPublication-->
				<xsl:apply-templates select="Ort" />
	
<!--PHYSICAL INFORMATION-->
	
	<!--dimension-->
				<xsl:apply-templates select="Format[string-length() != 0]" />
	
<!--CONTENTRELATED INFORMATION-->
	
	<!--language-->
				<xsl:apply-templates select="Sprache" />
	<!--subjectTopic-->
				<xsl:apply-templates select="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_"></xsl:apply-templates>
	
	<!--weitere Anmerkungen-->
				<!--<xsl:apply-templates select="Zusatzangabe" />-->
	
<!--OTHER-->

	<!--shelfMark-->		
				<xsl:apply-templates select="Signatur" />

	</xsl:element>
	
<xsl:element name="functions">
			
			<hierarchyFields>
					<hierarchy_top_id>
								<xsl:value-of select="translate(Reihe, '. /äüö,', '')" />
								<xsl:value-of select="replace(Jahr[1],'/','')"/>
								<xsl:value-of select="replace(Band-Nr_x046x_[1],'/','')"/>
								<!--<xsl:value-of select="translate(Jahr[1], translate(.,'0123456789', ''), '')" />
								<xsl:value-of select="translate(Band-Nr_x046x_[1], translate(.,'0123456789', ''), '')" />-->
								<!--<xsl:value-of select="Jahr" />
								<xsl:value-of select="Band-Nr_x046x_" />-->
								<xsl:text>stichwort</xsl:text>
								</hierarchy_top_id>
							<hierarchy_top_title><xsl:value-of select="Reihe" /></hierarchy_top_title>
							
							<hierarchy_parent_id>
								<xsl:value-of select="translate(Reihe, '. /äüö,', '')" />
								<xsl:value-of select="replace(Jahr[1],'/','')"/>
								<xsl:value-of select="replace(Band-Nr_x046x_[1],'/','')"/>
								<!--<xsl:value-of select="Jahr" />
								<xsl:value-of select="Band-Nr_x046x_" />-->
								<xsl:text>stichwort</xsl:text>
								</hierarchy_parent_id>
							<hierarchy_parent_title><xsl:value-of select="Reihe" /></hierarchy_parent_title>
					
				
					<is_hierarchy_id><xsl:value-of select="Objektnummer" /><xsl:text>stichwort</xsl:text></is_hierarchy_id>
					<is_hierarchy_title>
						<xsl:choose>
							<xsl:when test="Titel[string-length() != 0]">
								<xsl:value-of select="normalize-space(Titel)"/>
								</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="normalize-space(Reihe)"/>
								</xsl:otherwise>
							</xsl:choose>
						</is_hierarchy_title>
					
					<hierarchy_sequence>
						<xsl:choose>
							<xsl:when test="Titel[string-length() != 0]">
								<xsl:value-of select="normalize-space(substring(Titel,1,3))"/>
								</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="normalize-space(substring(Reihe,1,3))"/>
								</xsl:otherwise>
							</xsl:choose>
						</hierarchy_sequence>
					</hierarchyFields>
			</xsl:element>

	</xsl:if>







			
<!--ENDE_____________________________ENDE___________________________________ENDE-->
<!--ENDE_____________________________ENDE___________________________________ENDE-->
<!--ENDE_____________________________ENDE___________________________________ENDE-->

		</xsl:element>
		<!--</xsl:if>-->
	</xsl:template>
	
	
<!--Templates-->
		
		<xsl:template match="Zusatzangabe">
			<annotation>
				<xsl:value-of select="." />
				</annotation>
			</xsl:template>
		
		<xsl:template match="Anlass">
			<xsl:if test="../Format[string-length() = 0]">
				<documentType>
					<xsl:choose>
						<xsl:when test=".='BA'">
							<xsl:text>Bühnenaufzeichnung</xsl:text>
							</xsl:when>
						<xsl:when test=".='DO'">
							<xsl:text>Dokumentation</xsl:text>
							</xsl:when>
						<xsl:when test=".='SF'">
							<xsl:text>Spielfilm</xsl:text>
							</xsl:when>
						<xsl:when test=".='KF'">
							<xsl:text>Kunstfilm</xsl:text>
							</xsl:when>
						</xsl:choose>
					</documentType>
				</xsl:if>
			</xsl:template>
		
		<xsl:template match="Format">
			<xsl:choose>
				<xsl:when test="../Objektart[text()='Transparente']">
					<dimension>
						<xsl:value-of select="normalize-space(.)" />
						</dimension>
					</xsl:when>
				<xsl:otherwise>
					<documentType>
						<xsl:value-of select="." />
						<xsl:if test="../Anlass[string-length() != 0]">
						<xsl:text> - </xsl:text>
							<xsl:choose>
								<xsl:when test="../Anlass='BA'">
									<xsl:text>Bühnenaufzeichnung</xsl:text>
								</xsl:when>
								<xsl:when test="../Anlass='DO'">
									<xsl:text>Dokumentation</xsl:text>
									</xsl:when>
								<xsl:when test="../Anlass='SF'">
									<xsl:text>Spielfilm</xsl:text>
									</xsl:when>
								<xsl:when test="../Anlass='KF'">
									<xsl:text>Kunstfilm</xsl:text>
									</xsl:when>
								</xsl:choose>
							</xsl:if>
						</documentType>
					</xsl:otherwise>	
				</xsl:choose>
			</xsl:template>
			
		
		<xsl:template match="Land">
			<placeOfPublication>
				<xsl:value-of select="." />
				</placeOfPublication>
			</xsl:template>
		
		<xsl:template match="Band-Nr_x046x_">
				<issue>
					<xsl:value-of select="." />
					</issue>
			
			<!--<xsl:choose>
				<xsl:when test="../Objektart='Zeitschriften'">
					<issue>
						<xsl:value-of select="." />
						</issue>
					</xsl:when>
				<xsl:when test="../Objektart=''Artikel in Zeitschriften'">
					<issue>
						<xsl:value-of select="." />
						</issue>
					</xsl:when>
				</xsl:choose>-->
			</xsl:template>
		
		<xsl:template match="Jg_x046x_">
			<volume>
				<xsl:value-of select="." />
				</volume>
			</xsl:template>
		
		<xsl:template match="in_x058x_">
			<xsl:variable name="relatedID" select="translate(., translate(.,'0123456789', ''), '')" />
			<functions>
				<hierarchyFields>
					<hierarchy_top_id><xsl:value-of select="$relatedID" /><xsl:text>stichwort</xsl:text></hierarchy_top_id>
					<hierarchy_top_title><xsl:value-of select="//Objekt[Objektnummer=$relatedID]/Titel" /></hierarchy_top_title>
					
					<hierarchy_parent_id><xsl:value-of select="$relatedID" /><xsl:text>stichwort</xsl:text></hierarchy_parent_id>
					<hierarchy_parent_title><xsl:value-of select="//Objekt[Objektnummer=$relatedID]/Titel" /></hierarchy_parent_title>
					
					
					<is_hierarchy_id><xsl:value-of select="../Objektnummer" /><xsl:text>stichwort</xsl:text></is_hierarchy_id>
					<is_hierarchy_title><xsl:value-of select="../Titel" /></is_hierarchy_title>
				
					<hierarchy_sequence>
						<xsl:value-of select="normalize-space(substring(../Titel,1,3))"/>
						</hierarchy_sequence>
				
					</hierarchyFields>
				</functions>
			</xsl:template>
		
		<xsl:template match="Schlagw_x148x_rter_x032x__x040x_autom_x046x__x032x_aus_x032x_Deskr_x046x__x041x_">
			<xsl:for-each select=".">
				<subjectTopic>
					<xsl:value-of select="." />
					</subjectTopic>
				</xsl:for-each>
			</xsl:template>
		
		<xsl:template match="enth_x132x_lt_x058x_">
			<xsl:variable name="relatedID" select="translate(., translate(.,'0123456789', ''), '')" />
			<functions>
				<hierarchyFields>
					
					<hierarchy_top_id><xsl:value-of select="translate(../Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></hierarchy_top_id>
					<hierarchy_top_title><xsl:value-of select="../Reihe" /></hierarchy_top_title>
					
					<hierarchy_parent_id><xsl:value-of select="translate(../Reihe, '. /äüö,', '')" /><xsl:text>stichwort</xsl:text></hierarchy_parent_id>
					<hierarchy_parent_title><xsl:value-of select="../Reihe" /></hierarchy_parent_title>
					
					<!--<hierarchy_top_id><xsl:value-of select="../Objektnummer" /><xsl:text>stichwort</xsl:text></hierarchy_top_id>
					<hierarchy_top_title><xsl:value-of select="../Titel" /></hierarchy_top_title>-->
				
					<is_hierarchy_id><xsl:value-of select="../Objektnummer" /><xsl:text>stichwort</xsl:text></is_hierarchy_id>
					<is_hierarchy_title><xsl:value-of select="../Titel" /></is_hierarchy_title>
				
					</hierarchyFields>
				</functions>
			</xsl:template>
		
		<xsl:template match="ISBN_x047x_ISSN">
			<xsl:choose>
				<xsl:when test="../Objektart='Bücher u. Graue Literatur'">
					<isbn>
						<xsl:value-of select="." />
						</isbn>
					</xsl:when>
				<xsl:when test="../Objektart='Zeitschriften'">
					<issn>
						<xsl:value-of select="." />
						</issn>
					</xsl:when>
				</xsl:choose>
			</xsl:template>
		
		<xsl:template match="Verlag">
			<publisher>
				<xsl:value-of select="." />
				</publisher>
			</xsl:template>
		
		<xsl:template match="Ort">
			<placeOfPublication>
			<xsl:choose>
				<xsl:when test="../Objektart[text()='Plakate']">
					<xsl:variable name="list">
						0- Österreich;
						0-Bgl Österreich (Burgenland);
						0-Bgl+ Österreich (Burgenland: Eisenstadt);
						0-Ktn Österreich (Kärnten);
						0-Ktn+ Österreich (Kärnten: Klagenfurt);
						0-NÖ 	Österreich (Niederösterreich)
						0-NÖ+ 	Österreich (Niederösterreich: St. Pölten);
						0-OÖ 	Österreich (Oberösterreich);
						0-OÖ+ 	Österreich (Oberösterreich: Linz);
						0-S 	Österreich (Salzburg Land);
						0-S+ 	Österreich (Salzburg Land: Salzburg);
						0-Stmk 	Österreich (Steiermark);
						0-Stmk+ 	Österreich (Steiermark: Graz);
						0-T 	Österreich (Tirol);
						0-T+ 	Österreich (Tirol: Innsbruck);
						0-Vbg	Österreich (Vorarlberg);
						0-Vbg+ 	Österreich (Vorarlberg: Bregenz);
						0-W Österreich (Wien);
						1-Frankreich	Frankreich;
						2-USA		USA;
						</xsl:variable>
						<xsl:variable name="Ort" select="." />
						<xsl:value-of select="normalize-space(substring-before(substring-after($list,$Ort),';'))" />
					</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="." />
					</xsl:otherwise>
				</xsl:choose>
				</placeOfPublication>
			
			
				
				
			</xsl:template>
		
		<xsl:template match="_x154x_bersetzung">
			<xsl:for-each select=".">
				<contributor>
					<xsl:value-of select="." />
					<xsl:text> [Übers.]</xsl:text>
					</contributor>
				</xsl:for-each>
			</xsl:template>
		
		<xsl:template match="Sprache">
			<xsl:if test="contains(.,'deutsch')">
				<language>deutsch</language>
				</xsl:if>
			<xsl:if test="contains(.,'engl.')">
				<language>englisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'franz.')">
				<language>französisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'ital.')">
				<language>italienisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'finn.')">
				<language>finnisch</language></xsl:if>
			<xsl:if test="contains(.,'niederländ.')">
				<language>niederländisch</language></xsl:if>
			<xsl:if test="contains(.,'dän.')">
				<language>dänisch</language></xsl:if>
			<xsl:if test="contains(.,'bask.')">
				<language>baskisch</language></xsl:if>
			<xsl:if test="contains(.,'türk.')">
				<language>türkisch</language></xsl:if>
			<xsl:if test="contains(.,'tschech.')">
				<language>tschechisch</language></xsl:if>
			<xsl:if test="contains(.,'serb..')">
				<language>serbisch</language></xsl:if>
			<xsl:if test="contains(.,'poln.')">
				<language>polnisch</language></xsl:if>
			<xsl:if test="contains(.,'slowak.')">
				<language>slowakisch</language></xsl:if>
			<xsl:if test="contains(.,'ungar.')">
				<language>ungarisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'span.')">
				<language>spanisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'russ.')">
				<language>russisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'slowen.')">
				<language>slowenisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'norweg.')">
				<language>norwegisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'schwed.')">
				<language>schwedisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'japan.')">
				<language>japanisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'ohne')">
				<language>o.A.</language>
				</xsl:if>
			<xsl:if test="contains(.,'katalan.')">
				<language>katalanisch</language>
				</xsl:if>
			<xsl:if test="contains(.,'lat.')">
				<language>latein</language>
				</xsl:if>
			<xsl:if test="contains(.,'mhd.')">
				<language>mittelhochdeutsch</language>
				</xsl:if>
			<xsl:if test="contains(.,'portug.')">
				<language>portugiesisch</language>
				</xsl:if>	
			<xsl:if test="contains(.,'portug.')">
				<language>portugiesisch</language>
				</xsl:if>				
			
			</xsl:template>
		
		<xsl:template match="Seiten">
			<xsl:choose>
				<xsl:when test="../Objektart[text()='Videos']">
					<runTime>
						<xsl:value-of select="." />
						<xsl:text> min</xsl:text>
						</runTime>
					</xsl:when>
				<xsl:otherwise>
					<physical>
						<xsl:value-of select="." />
						</physical>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:template>
		
		<xsl:template match="Jahr">
			<displayPublishDate>
				<xsl:value-of select="." />
				</displayPublishDate>
			<publishDate>
				<xsl:value-of select="translate(., translate(.,'0123456789', ''), '')" />
				</publishDate>
			</xsl:template>
		
		<xsl:template match="Reihe">
			<xsl:choose>
				<xsl:when test="Objektart[text()='Zeitschriften']">
					<sourceInfo>
						<xsl:value-of select="." />
						</sourceInfo>
					</xsl:when>
				<xsl:otherwise>
					<series>
						<xsl:value-of select="." />
						</series>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:template>
		
		<xsl:template match="Hg_x046x__x032x_von">
			<xsl:for-each select=".">
				<xsl:choose>
					<xsl:when test="contains(.,'/')">
						<editor>
							<xsl:value-of select="normalize-space(substring-before(.,'/'))" />
							</editor>
						</xsl:when>
					<xsl:when test="(contains(.,'N, N.')) or (contains(.,'N., N.'))">
					<!--<editor>
						<xsl:text>o.A.</xsl:text>
						</editor>-->
					</xsl:when>
					<xsl:otherwise>
						<editor>
							<xsl:value-of select="." />
							</editor>
							</xsl:otherwise>
					</xsl:choose>
				
				</xsl:for-each>
			</xsl:template>
		
		<xsl:template match="Titel">
				<title>
					<xsl:for-each select="../Titel">
						<xsl:value-of select="normalize-space(replace(.,'_',''))"/>
						</xsl:for-each>
						<xsl:if test="../Objektart[text()='Zeitschriften']">
						<xsl:text> </xsl:text>
						<xsl:value-of select="../Jg_x046x_"></xsl:value-of>
						<xsl:text>(</xsl:text>
						<xsl:value-of select="../Jahr"></xsl:value-of>
						<xsl:text>)</xsl:text>
						<xsl:value-of select="../Band-Nr_x046x_"></xsl:value-of>
						</xsl:if>
					</title>
				<title_short>
					<xsl:value-of select="normalize-space(replace(.,'_',''))"/>	
					</title_short>
			
			<!--<xsl:choose>
				<xsl:when test="contains(., '.')">
					<title>
						<xsl:value-of select="."/>
						</title>
					<title_short>
						<xsl:value-of select="normalize-space(substring-before(., '.'))"/>
						</title_short>
					<xsl:if test="substring-after(.,'.')!=''">
					<title_sub>
						<xsl:value-of select="normalize-space(substring-after(., '.'))"/>
						</title_sub>
						</xsl:if>
					</xsl:when>
					<xsl:otherwise>
						<title>
							<xsl:value-of select="."/>
							</title>
						<title_short>
							<xsl:value-of select="."/>
							</title_short>
						</xsl:otherwise>
					</xsl:choose>-->
			</xsl:template>
		
		<xsl:template match="et_al">
			<xsl:for-each select=".">
				<xsl:choose>
					<xsl:when test="contains(.,'Hg.')">
						<editor>
							<xsl:value-of select="normalize-space(substring-before(.,'/'))" />
							</editor>
						</xsl:when>
					<xsl:otherwise>
						<author>
							<xsl:value-of select="." />
							</author>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</xsl:template>
		
		<xsl:template match="Autorin_x032x_2">
			<xsl:choose>
				<xsl:when test="contains(.,'Hg.')">
					<editor>
						<xsl:value-of select="normalize-space(substring-before(.,'/'))" />
						</editor>
					</xsl:when>
				<xsl:when test="(contains(.,'N, N.')) or (contains(.,'N., N.'))">
					<!--<author>
						<xsl:text>o.A.</xsl:text>
						</author>-->
					</xsl:when>
				<xsl:otherwise>
					<author>
						<xsl:value-of select="." />
						</author>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:template>
		
		<xsl:template match="Autorin_x032x_1">
			<xsl:choose>
				<xsl:when test="contains(.,'Hg.')">
					<editor>
						<xsl:value-of select="normalize-space(substring-before(.,'/'))" />
						</editor>
					</xsl:when>
				<xsl:when test="(contains(.,'N, N.')) or (contains(.,'N., N.'))">
					<!--<author>
						<xsl:text>o.A.</xsl:text>
						</author>-->
					</xsl:when>
				<xsl:otherwise>
					<author>
						<xsl:value-of select="." />
						</author>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:template>
		
		<xsl:template match="Signatur">
			<shelfMark>
				<xsl:value-of  select="." />
				<xsl:text> </xsl:text>
				<xsl:value-of select="../Sign_x046x_-Nr_x046x_" />
				</shelfMark>
			</xsl:template>
		
		

</xsl:stylesheet>
