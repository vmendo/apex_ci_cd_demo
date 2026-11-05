# CustomersCICD

SQLcl 26.3 Projects demo for APEX application 103 and the EBA_CUST database model.

- `src/database/demo/`: database structures exported by SQLcl Projects.
- `src/database/demo/apex_apps/<application-alias>/application.apx`: native APEXlang application definition.
- The application directory contains its exported pages and shared components; the alias determines the final path.

The project uses `apex.apexlang=true`. Each release uses SQLcl Projects export, stage, verify, release, artifact generation, and deployment. GitHub receives one deployment ZIP and its SHA256 checksum; no separate APEXlang source archive or manual application export/validation step is required. Source table data and supporting-object installation content are excluded.

The enclosing APEXCICD workspace contains reusable stage scripts. Each demonstration starts with a fresh project. Full cleanup empties remote delivery content and removes this checkout while preserving the GitHub repository, production schema/workspace infrastructure, outer scripts/configuration, controlled SQLcl runtime, and logs.

`create_release.sh` waits for manual PR review/merge, then publishes automatically through its internal helper. Closing an unmerged PR or Ctrl+C cancels; `create_release.sh --resume <version>` resumes a saved proposal. Deployment remains a separate manual stage. Development table/column and APEX page changes are also performed manually at the documented checkpoint.
