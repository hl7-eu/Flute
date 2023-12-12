
### StudyVariables Overview 

The StudyVariables model is a carefully structured data model tailored for clinical research in prostate cancer. It serves as a foundational element in the Cross-border Prostate Cancer Pilot Study conducted within the FLUTE project. The model is developed to capture essential clinical variables relevant to prostate cancer studies, enhancing data quality and consistency across different clinical centers in Europe.

To achive this result a common data model has been agreed.

The StudyVariables model is formalized as an HL7 FHIR Logical Model, detailed in the the following section.
<!-- table -->

### HL7 FHIR Models

The following table summarizes the logical models used by this guide.


<table  style="border-collapse: collapse; width: 100%" border="1" >
<thead>
<tr style="text-align: center;">
<td><strong>Name</strong></td>
<td><strong>Title</strong></td>
<td><strong>Description</strong></td>
</tr>
</thead>
<tbody>

{% for sd_hash in site.data.structuredefinitions -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "logical" -%}
  <tr><td><a href="{{sd.path}}">{{sd.name}}</a></td><td>{{sd.title}}</td><td>{{sd.description}}</td></tr>
  {%- endif -%}
{%- endfor -%}

</tbody>
</table>