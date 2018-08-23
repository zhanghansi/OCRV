[QueryItem="diagnosis_date"]
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>

SELECT ?diagnosis_realtion ?diagnosis_date ?diagnosis_year WHERE
{ ?diagnosis_realtion a :OCRV_000001; teo:TEO_0000007 ?d.
  ?d teo:TEO_0000015 ?diagnosis_date.
  BIND(year(?diagnosis_date) AS ?diagnosis_year).}

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

select ?patient ?censu_stract ?SVI_socioeconomic_status  where {?patient :OCRV_000103 ?censu_stract. ?censu_stract obo:RO_0000086 ?SVI_socioeconomic_status . }

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

select ?patient ?marital_status where { ?patient :OCRV_000104 ?marital_status .  ?marital_status a :OCRV_000010 . }

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


select ?county ?BRFSS_final_weight where {?interviewee :OCRV_000107 ?smoker . ?smoker a :OCRV_000012 . ?interviewee :OCRV_000103 ?county ; :OCRV_000200 ?BRFSS_final_weight . ?county a obo:NCIT_C107687}

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

SELECT ?patient ?biological_sex WHERE 
{?patient :OCRV_000108 ?biological_sex.}

[QueryItem="quality check"]
PREFIX obo: <http://purl.obolibrary.org/obo/>
PREFIX : <http://www.semanticweb.org/ontologies/OCRV#>
PREFIX teo: <https://sbmi.uth.edu/ontology/TEO.owl#>

SELECT ?patient ?diagnosis_year ?birth_year ?age_of_diangosis WHERE
{ ?patient :OCRV_000102 ?diagnosis .
  ?diagnosis a :OCRV_000001; teo:TEO_0000007 ?d.
  ?d teo:TEO_0000015 ?date.
  BIND(year(?date) AS ?diagnosis_year).
  ?patient obo:RO_0000056 ?birth.
  ?birth teo:TEO_0000007 ?year_of_birth.
  ?year_of_birth teo:TEO_0000015 ?birth_year.
  BIND(?diagnosis_year-?birth_year AS ?age_of_diangosis)
}
