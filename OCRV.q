[QueryItem="diagnosis_date"]
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>

SELECT ?diagnosis ?date ?year WHERE
{ ?diagnosis a :OCRV_000001; teo:TEO_0000007 ?d.
  ?d teo:TEO_0000015 ?date.
  BIND(year(?date) AS ?year).}

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
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>

select ?p ?censustract ?svi_1  where {?p :OCRV_000103 ?censustract. ?censustract obo:RO_0000086 ?svi_1 . }

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

[QueryItem="patient_single"]
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

select ?p ?marital where { ?p :OCRV_000104 ?marital .  ?marital a :OCRV_000010 . }

[QueryItem="patient_chemo"]
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


select ?p where {?p :OCRV_000105 ?procedure . ?procedure :OCRV_000106 obo:NCIT_C15632 . }

[QueryItem="patient_survivalmonths"]
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
select ?p  ?s ?months where {?p obo:RO_0000091 ?s .  ?s  teo:TEO_0000007 ?months .}

[QueryItem="BRFSS"]
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


select ?county ?weight where {?interviewee :OCRV_000107 ?smoker . ?smoker a :OCRV_000012 . ?interviewee :OCRV_000103 ?county ; :OCRV_000200 ?weight . ?county a obo:NCIT_C107687}

[QueryItem="smoker"]
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


select ?interviewee  where {  ?interviewee :OCRV_000107 ?smoker . ?smoker a :OCRV_000012 .}

[QueryItem="gender"]
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>

SELECT ?patient ?gender WHERE 
{?patient :OCRV_000108 ?gender.}

[QueryItem="quality check"]
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>

SELECT ?patient ?diagnosis_year ?birth_year WHERE
{ ?patient :OCRV_000102 ?diagnosis .
  ?diagnosis a :OCRV_000001; teo:TEO_0000007 ?d.
  ?d teo:TEO_0000015 ?date.
  BIND(year(?date) AS ?diagnosis_year).
  ?patient obo:RO_0000056 ?birth.
  ?birth teo:TEO_0000007 ?birthyear.
  ?birthyear teo:TEO_0000015 ?birth_year.
  
}

[QueryItem="test"]
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>

SELECT * WHERE
{ 
  ?d teo:TEO_0000015 ?date. 
}
