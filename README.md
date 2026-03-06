# PostgreSQL COS v6.6 Database Backup

## Database Information
- **Database:** cos
- **Version:** 6.6
- **Backup Date:** ~0,4datetime:~4,2datetime:~6,2
- **Git Branch:** postgres-cos6.6

## Directory Structure
- `/migrations/schema/` - Database schema files
- `/migrations/functions/` - Stored procedures and functions
- `/migrations/triggers/` - Database triggers
- `/migrations/views/` - Database views
- `/migrations/tables/` - Table definitions
- `/full_backups/` - Complete database backups
- `/docs/` - Documentation files
- `/config/` - Configuration files

## Backup Files
- Schema: public_schema_~0,4datetime:~4,2datetime:~6,2.sql ( MB)
- Functions: functions_~0,4datetime:~4,2datetime:~6,2.sql
- Triggers: triggers_~0,4datetime:~4,2datetime:~6,2.sql
- Views: views_~0,4datetime:~4,2datetime:~6,2.sql
- Tables: tables_~0,4datetime:~4,2datetime:~6,2.sql
- Full Backup: cos_cos_full_~0,4datetime:~4,2datetime:~6,2datetime:~8,2%datetime:~10,2%datetime:~12,2.dump ( MB)

## Restoration Instructions
See `docs\RESTORE.md` for detailed restoration steps.
