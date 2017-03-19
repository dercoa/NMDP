select 
	h.hla_hist_id,
	h.sequence_num,
	h.typing_dte,
	h.received_dte,
	h.nmdp_id,
	h.phenotype_seq_num, 
	rpt.sys_cde as reporting_method_cde,
	org.org_guid,
	si.identifier_cde
from (
	select 
		h.hla_hist_id,
		p.phenotype_seq_num,
		h.sequence_num,
		h.typing_dte,
		h.received_dte,
		h.phenotype_id,
		s.nmdp_id,
		s.subject_id,
		h.org_identifier_id,
		h.rpt_system_id
	from mdp_sip_prd..t_hla_hist h
	inner join mdp_sip_prd..t_phenotype p on h.phenotype_id = h.phenotype_id
	inner join mdp_sip_prd..t_subject s on s.subject_id = p.subject_id
	where s.subject_classification_id = 9
) h
join mdp_sip_prd..t_identifier si on h.subject_id = si.subject_id
left join mdp_sip_prd..t_org_identifier org on h.org_identifier_id = org.org_identifier_id
left join mdp_sip_prd..t_hla_rpt_system rpt on h.rpt_system_id = rpt.rpt_system_id
