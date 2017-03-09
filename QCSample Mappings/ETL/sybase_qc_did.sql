select m.qc_did,
       m.nmdp_did,
       m.lst_updt_dte,
       sum(case when s.nmdp_id is null then 0 else 1 end) cnt_hist --'ACTIVE' else 'DEPLETED' end as sample_status_cde  
from  mdp_dnr_prd..t_qc_qcstore_nmdp_dnr_map m
left join mdp_sip_prd..t_subject s on s.nmdp_id = m.nmdp_did
left join mdp_sip_prd..t_phenotype p on s.subject_id = p.subject_id
left join mdp_sip_prd..t_hla_hist h on h.phenotype_id = p.phenotype_id
where m.qc_did like 'QC%'
group by m.qc_did,
       m.nmdp_did,
       m.lst_updt_dte