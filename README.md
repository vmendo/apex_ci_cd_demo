# CustomersCICD

SQLcl 26.3 Projects demo for Customers application 103 and the EBA_CUST database model.

## Versioned sources

- `src/database/demo/`: database DDL and the APEX SQL application export used by SQLcl Projects for staging and deployment.
- `src/apexlang/f103/application.apx`: the validated APEXlang representation of the same application.
- `src/apexlang/f103/pages/`: the 127 exported application pages.
- `src/apexlang/f103/shared-components/`: shared application components and assets.

The APEXlang companion is exported and compiled on every release. Supporting-object installation scripts and source table data are excluded. `EXPORT_METADATA.json` records export normalization and exclusions.

Each new release publishes the SQLcl Projects deployment ZIP plus an APEXlang source ZIP, each with a SHA256 checksum. APEXlang is included for review and versioning; deployment uses the Projects SQL application installer. The original v1.0 deployment ZIP is preserved when adding its companion source asset.

The reusable stage and cleanup scripts live in the enclosing APEXCICD demo workspace. Full cleanup empties remote delivery content and deletes this generated checkout while preserving the GitHub repository, the outer scripts, logs, baseline recovery export, and controlled SQLcl runtime.
