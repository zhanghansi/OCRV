# The Ontology for Cancer Research Variables


A description of the Ontology for Cancer Research Variables (OCRV) is published in the BMC Medical Informatics and Decision Making in an article by [Zhang et al.](https://bmcmedinformdecismak.biomedcentral.com/articles/10.1186/s12911-018-0636-4)

## Aim and Scope

The OCRV was built for integrating and unifying multi-level predictors of cancer survival across heterogeneous data sources. The OCRV covered a broad range of individual- and contextual-level factors. We used the Basic Formal Ontology (BFO) as the upper-level ontology, and imported the NCI Thesaurus (NCIt) and the Time Event Ontology (TEO) as the foundation for creating the OCRV.

## Description

The OCRV was constructed iteratively using the [Protégé tool](https://protege.stanford.edu/). We used the BFO as the upper-level ontology and imported the NCIt and the TEO as the foundation for creating the OCRV. Besides reusing terms in existing ontologies, we also created entities (i.e., classes, object properties, and datatype properties) based on the data analysis needs.

Our semantic data integration workflow is based on an ontology-based data access (OBDA) model and the [Ontop framework](https://ontop.inf.unibz.it/). The user can post data integration requests according to OCRV, then the requests were converted into SPARQL queries. The OBDA model consists of a set of semantic mappings that specify how source data are related to the entities in the ontology.

## Installing

### Method I - Bundle installation

* [Download Protege bundled with -ontopPro-](https://sourceforge.net/projects/ontop4obda/files/). Then run Protege (run.bat file on Windows, and sh run.sh command from terminal on Linux/Mac). Note that Java 8 is required.

* Unzip ncit.owl.zip file.  The original file is too large, therefore, we zip it before upload to Github.

* Open OCRV.owl file from Protege

### Method II - Installation or update of ontop plugin

* Install Protégé version 5.  Follow these [i]nstructions](https://protegewiki.stanford.edu/wiki/Protege-OWL_4_FAQ#How_do_I_install_Protege-OWL.3F) to install Protégé in your machine.

* start Protege

* Install or update Ontop OBDA Protege Plugin. If you have the automatic check for updates on startup on, you can select the ontop plugin between the suggested plugins. Otherwise, from the menu bar select File -> Check for plugins... and Select the ontop plugin. If ontop is not visible between the available plugins you already have the latest version installed.

* Open Protege's Window Menu, and activate the ontop tabs.

* Open OCRV.owl file from Protege


## Built With
* [ontop](https://github.com/ontop/ontop/wiki/Easy-Tutorial%3A-Using-Ontop-from-Protege) - an easy tutorial of using ontop from Protege

## Authors

* **Hansi Zhang**
* **Jiang Bian**
* **Yi Guo**
