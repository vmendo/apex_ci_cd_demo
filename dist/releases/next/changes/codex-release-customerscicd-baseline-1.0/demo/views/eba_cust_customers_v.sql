-- liquibase formatted sql
-- changeset DEMO:1793874438230 stripComments:false  logicalFilePath:codex-release-customerscicd-baseline-1.0/demo/views/eba_cust_customers_v.sql
-- sqlcl_snapshot src/database/demo/views/eba_cust_customers_v.sql:null:57e1d97d52ede3b2067672bbf5324e9b89028d89:create

create or replace force editionable view ${demo}.eba_cust_customers_v (
    row_key,
    id,
    customer_name,
    status,
    status_id,
    category,
    geography_name,
    referencable,
    number_of_users,
    summary,
    web_site,
    product_uses,
    industry,
    tags,
    created,
    created_by,
    updated,
    updated_by
) as
    select
        a.row_key,
        a.id,
        customer_name,
        status,
        a.status_id,
        category,
        geography_name,
        referencable,
        number_of_users,
        summary,
        web_site,
        (
            select
                listagg(p.product_name, ', ') within group(
                order by
                    p.product_name
                ) product_uses
            from
                eba_cust_customers    c,
                eba_cust_product_uses u,
                eba_cust_products     p
            where
                    c.id = u.customer_id
                and u.product_id = p.id
                and c.id = a.id
            group by
                c.customer_name
        )                 product_uses,
        nvl((
            select
                industry_name
            from
                eba_cust_industries i
            where
                i.id = a.industry_id
        ), 'Not Defined') industry,
        tags,
        a.created,
        a.created_by,
        a.updated,
        a.updated_by
    from
        eba_cust_customers   a,
        eba_cust_categories  b,
        eba_cust_status      c,
        eba_cust_geographies d
    where
            a.category_id = b.id (+)
        and a.status_id = c.id (+)
        and a.geography_id = d.id (+);

