<!doctype html>
<html>
<head>
<meta name="layout" content="bootstrap" />
<title>CIDOC-CRM Element Representation</title>
</head>

<body>


  <div class="row-fluid">
    <section id="main" class="span9">

      <div class="hero-unit">
        <h1>CIDOC-CRM Element Representation</h1>

        <p>This document is a basic concept evaluation for CIDOC-CRM. It presents the Entities and their properties which might be the initial attempt to a
          programmable way.</p>

        <p>
          The document mainly includes the presentation of
          <g:link controller="cidoc" action="index">entities</g:link>
          and the presentation of the overall
          <g:link controller="cidoc" action="properties">properties</g:link>
          .

        </p>
        <span class="paragrapg_text">The "CIDOC object-oriented Conceptual Reference Model" (CRM), was developed by the ICOM/CIDOC Documentation
          Standards Group. Since September 2000, the CIDOC CRM is being developed into an ISO standard in a joined effort of the <a target="_self"
          href="http://network.icom.museum/cidoc/working-groups/crm-special-interest-group/">CIDOC CRM SIG</a> and <a target="_blank"
          href="http://www.iso.org/iso/technical_committee_contact.html?commid=48836">ISO/TC46/SC4/WG9</a>. Since September 2006 it has been accepted as ISO
          21127. On December 2014, a new version became available <a target="_blank" href="http://www.iso.org/iso/catalogue_detail?csnumber=57832">ISO21127:2014</a>.
          It represents an 'ontology' for cultural heritage information i.e. it describes in a formal language the explicit and implicit concepts and relations
          relevant to the documentation of cultural heritage. The primary role of the CIDOC CRM is to serve as a basis for mediation of cultural heritage
          information and thereby provide the semantic 'glue' needed to transform today's disparate, localised information sources into a coherent and valuable
          global resource.
        </span>
        <p></p>
        <p>
          <span class="paragrapg_text">The <span color="#FF0000"><b>latest official version</b></span> of the CIDOC CRM is version 5.0.4. This and all
            previous versions can be found <a href="http://www.cidoc-crm.org/official_release_cidoc.html"><strong>here</strong>.</a></span><br>
        </p>
        <p>
          <span class="paragrapg_text">A <span color="#FF0000"><b>complete graphical representation</b></span> of the CIDOC CRM version 5.0.1 can be
            found <a href="http://www.cidoc-crm.org/cidoc_graphical_representation_v_5_1/graphical_representation_5_0_1.html"><strong>here</strong></a>.
          </span>
        </p>
        <p class="paragrapg_text">
          A graphical representation of a <span color="#FF0000"><b>minimal reduced CRM form</b></span> can be found <a
            href="http://www.cidoc-crm.org/cidoc_core_graphical_representation/graphical_representation.html"><strong>here</strong></a>.
        </p>

        <p class="paragrapg_text">
          <span color="#FF0000"><strong>Commentary</strong></span><br> Additional explanations about the meaning and use of selected CIDOC CRM concepts can
          be found <a href="http://www.cidoc-crm.org/commentary/commentary.html"><strong>here</strong></a>.
        </p>
      </div>
      <div>
        <nav role="navigation" class="table-of-contents">
          <h2>Entities:</h2>
          <a href="${request.contextPath}/classes#E1_CRM_Entity"> E1 CRM Entity </a>>> <a href="${request.contextPath}/classes#E2_Temporal_Entity"> E2 Temporal Entity </a>>> <a href="${request.contextPath}/classes#E3_Condition_State"> E3
            Condition State </a>>> <a href="${request.contextPath}/classes#E4_Period"> E4 Period </a>>> <a href="${request.contextPath}/classes#E5_Event"> E5 Event </a>>> <a href="${request.contextPath}/classes#E6_Destruction"> E6 Destruction </a>>> <a
            href="${request.contextPath}/classes#E7_Activity"> E7 Activity </a>>> <a href="${request.contextPath}/classes#E8_Acquisition"> E8 Acquisition </a>>> <a href="${request.contextPath}/classes#E9_Move"> E9 Move </a>>> <a
            href="${request.contextPath}/classes#E10_Transfer_of_Custody"> E10 Transfer of Custody </a>>> <a href="${request.contextPath}/classes#E11_Modification"> E11 Modification </a>>> <a href="${request.contextPath}/classes#E12_Production">
            E12 Production </a>>> <a href="${request.contextPath}/classes#E13_Attribute_Assignment"> E13 Attribute Assignment </a>>> <a href="${request.contextPath}/classes#E14_Condition_Assessment"> E14 Condition
            Assessment </a>>> <a href="${request.contextPath}/classes#E15_Identifier_Assignment"> E15 Identifier Assignment </a>>> <a href="${request.contextPath}/classes#E16_Measurement"> E16 Measurement </a>>> <a
            href="${request.contextPath}/classes#E17_Type_Assignment"> E17 Type Assignment </a>>> <a href="${request.contextPath}/classes#E18_Physical_Thing"> E18 Physical Thing </a>>> <a href="${request.contextPath}/classes#E19_Physical_Object">
            E19 Physical Object </a>>> <a href="${request.contextPath}/classes#E20_Biological_Object"> E20 Biological Object </a>>> <a href="${request.contextPath}/classes#E21_Person"> E21 Person </a>>> <a
            href="${request.contextPath}/classes#E22_Man-Made_Object"> E22 Man-Made Object </a>>> <a href="${request.contextPath}/classes#E24_Physical_Man-Made_Thing"> E24 Physical Man-Made Thing </a>>> <a
            href="${request.contextPath}/classes#E25_Man-Made_Feature"> E25 Man-Made Feature </a>>> <a href="${request.contextPath}/classes#E26_Physical_Feature"> E26 Physical Feature </a>>> <a href="${request.contextPath}/classes#E27_Site"> E27
            Site </a>>> <a href="${request.contextPath}/classes#E28_Conceptual_Object"> E28 Conceptual Object </a>>> <a href="${request.contextPath}/classes#E29_Design_or_Procedure"> E29 Design or Procedure </a>>> <a
            href="${request.contextPath}/classes#E30_Right"> E30 Right </a>>> <a href="${request.contextPath}/classes#E31_Document"> E31 Document </a>>> <a href="${request.contextPath}/classes#E32_Authority_Document"> E32 Authority Document </a>>> <a
            href="${request.contextPath}/classes#E33_Linguistic_Object"> E33 Linguistic Object </a>>> <a href="${request.contextPath}/classes#E34_Inscription"> E34 Inscription </a>>> <a href="${request.contextPath}/classes#E35_Title"> E35 Title </a>>>
          <a href="${request.contextPath}/classes#E36_Visual_Item"> E36 Visual Item </a>>> <a href="${request.contextPath}/classes#E37_Mark"> E37 Mark </a>>> <a href="${request.contextPath}/classes#E38_Image"> E38 Image </a>>> <a href="${request.contextPath}/classes#E39_Actor">
            E39 Actor </a>>> <a href="${request.contextPath}/classes#E40_Legal_Body"> E40 Legal Body </a>>> <a href="${request.contextPath}/classes#E41_Appellation"> E41 Appellation </a>>> <a href="${request.contextPath}/classes#E42_Identifier"> E42
            Identifier </a>>> <a href="${request.contextPath}/classes#E44_Place_Appellation"> E44 Place Appellation </a>>> <a href="${request.contextPath}/classes#E45_Address"> E45 Address </a>>> <a
            href="${request.contextPath}/classes#E46_Section_Definition"> E46 Section Definition </a>>> <a href="${request.contextPath}/classes#E47_Spatial_Coordinates"> E47 Spatial Coordinates </a>>> <a
            href="${request.contextPath}/classes#E48_Place_Name"> E48 Place Name </a>>> <a href="${request.contextPath}/classes#E49_Time_Appellation"> E49 Time Appellation </a>>> <a href="${request.contextPath}/classes#E50_Date"> E50 Date </a>>> <a
            href="${request.contextPath}/classes#E51_Contact_Point"> E51 Contact Point </a>>> <a href="${request.contextPath}/classes#E52_Time-Span"> E52 Time-Span </a>>> <a href="${request.contextPath}/classes#E53_Place"> E53 Place </a>>> <a
            href="${request.contextPath}/classes#E54_Dimension"> E54 Dimension </a>>> <a href="${request.contextPath}/classes#E55_Type"> E55 Type </a>>> <a href="${request.contextPath}/classes#E56_Language"> E56 Language </a>>> <a
            href="${request.contextPath}/classes#E57_Material"> E57 Material </a>>> <a href="${request.contextPath}/classes#E58_Measurement_Unit"> E58 Measurement Unit </a>>> <a href="${request.contextPath}/classes#E63_Beginning_of_Existence">
            E63 Beginning of Existence </a>>> <a href="${request.contextPath}/classes#E64_End_of_Existence"> E64 End of Existence </a>>> <a href="${request.contextPath}/classes#E65_Creation"> E65 Creation </a>>> <a
            href="${request.contextPath}/classes#E66_Formation"> E66 Formation </a>>> <a href="${request.contextPath}/classes#E67_Birth"> E67 Birth </a>>> <a href="${request.contextPath}/classes#E68_Dissolution"> E68 Dissolution </a>>> <a
            href="${request.contextPath}/classes#E69_Death"> E69 Death </a>>> <a href="${request.contextPath}/classes#E70_Thing"> E70 Thing </a>>> <a href="${request.contextPath}/classes#E71_Man-Made_Thing"> E71 Man-Made Thing </a>>> <a
            href="${request.contextPath}/classes#E72_Legal_Object"> E72 Legal Object </a>>> <a href="${request.contextPath}/classes#E73_Information_Object"> E73 Information Object </a>>> <a href="${request.contextPath}/classes#E74_Group"> E74
            Group </a>>> <a href="${request.contextPath}/classes#E75_Conceptual_Object_Appellation"> E75 Conceptual Object Appellation </a>>> <a href="${request.contextPath}/classes#E77_Persistent_Item"> E77 Persistent
            Item </a>>> <a href="${request.contextPath}/classes#E78_Collection"> E78 Collection </a>>> <a href="${request.contextPath}/classes#E79_Part_Addition"> E79 Part Addition </a>>> <a href="${request.contextPath}/classes#E80_Part_Removal"> E80
            Part Removal </a>>> <a href="${request.contextPath}/classes#E81_Transformation"> E81 Transformation </a>>> <a href="${request.contextPath}/classes#E82_Actor_Appellation"> E82 Actor Appellation </a>>> <a
            href="${request.contextPath}/classes#E83_Type_Creation"> E83 Type Creation </a>>> <a href="${request.contextPath}/classes#E84_Information_Carrier"> E84 Information Carrier </a>>> <a href="${request.contextPath}/classes#E85_Joining">
            E85 Joining </a>>> <a href="${request.contextPath}/classes#E86_Leaving"> E86 Leaving </a>>> <a href="${request.contextPath}/classes#E87_Curation_Activity"> E87 Curation Activity </a>>> <a
            href="${request.contextPath}/classes#E89_Propositional_Object"> E89 Propositional Object </a>>> <a href="${request.contextPath}/classes#E90_Symbolic_Object"> E90 Symbolic Object </a>>> <a
            href="${request.contextPath}/classes#E91_Co-Reference_Assignment"> E91 Co-Reference Assignment </a>>> <a href="${request.contextPath}/classes#E92_Spacetime_Volume"> E92 Spacetime Volume </a>>> <a
            href="${request.contextPath}/classes#E93_Spacetime_Snapshot"> E93 Spacetime Snapshot </a>
        </nav>
      </div>


    </section>
  </div>


</body>
</html>