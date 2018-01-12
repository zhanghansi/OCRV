[QueryItem="diagnosis_date"]
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX bfo: <http://www.ifomis.org/bfo/1.1/span#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?diagnosis ?date where {?diagnosis teo:TEO_0000007 ?d. BIND(substr(?d,56,4) AS ?date) }

[QueryItem="patient_diagnosis_tumor"]
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX bfo: <http://www.ifomis.org/bfo/1.1/span#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?relation ?p ?tumor_type  ?diagnosis_date where {?p :OCRV_000102 ?relation. ?relation :OCRV_000100 ?tumor_type ;  teo:TEO_0000007 ?diagnosis_date . }

[QueryItem="patient_censustract_SVI_1"]
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX bfo: <http://www.ifomis.org/bfo/1.1/span#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?p ?censustract ?svi_1 where {?p :OCRV_000103 ?censustract.  ?censustract obo:RO_0000086 ?svi_1 .}

[QueryItem="patient_death_colon"]
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX obda: <https://w3id.org/obda/vocabulary#>
PREFIX bfo: <http://www.ifomis.org/bfo/1.1/span#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

select ?p where {?p :OCRV_000102 ?d . ?d  :OCRV_000103 obo:NCIT_C9242 . }