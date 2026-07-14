# MyDemo

Repeatable SQLcl Projects and APEXlang CI/CD demo.

## Scope

- Schema: `WKSP_DEMO`
- Database connection: `apex_dev`
- APEX workspace: `DEMO`
- APEX app: 115

`project export` captures the filtered database objects and the filtered APEX
application. The SQLcl Projects configuration selects both the deployable
APPLICATION_SOURCE export and the APEXLANG source format, so the scripts do
not run separate `apex export-application` commands.
