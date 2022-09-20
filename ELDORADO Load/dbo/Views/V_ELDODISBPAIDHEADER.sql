create view DBO.V_ELDODISBPAIDHEADER as select * from  DBO.ELDODISBPAIDHEADER
where not ((policy_underwriter='901' and group_number='ACT') or (policy_underwriter='901'
and group_number='RET') or (policy_underwriter='905' and group_number='AQX')) ;