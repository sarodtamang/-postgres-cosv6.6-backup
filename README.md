# PostgreSQL COS v6.6 Database Backup

## Database Information
- **Database:** cos
- **Version:** 6.6
- **Backup Date:** 2026-06-03
- **Backup Time:** 15:26:03
- **Git Branch:** postgres-cos6.6

## Backup Files
- Complete Schema: complete_schema_20260603.sql
- Tables: tables_20260603.sql
- Functions: functions_20260603.sql
- Triggers: triggers_20260603.sql
- Views: views_20260603.sql
- Sequences: sequences_20260603.sql
- Indexes: indexes_20260603.sql
- Full Backup: cos_cos_full_20260603_152603.dump (1 MB)

## Restoration Instructions

### Option 1: Restore Complete Schema
psql -U postgres -d new_database -f migrations\schema\complete_schema_20260603.sql

### Option 2: Restore Individual Components
psql -U postgres -d new_database -f migrations\tables\tables_20260603.sql
psql -U postgres -d new_database -f migrations\functions\functions_20260603.sql

### Option 3: Restore Full Database
pg_restore -U postgres -d new_database -v full_backups\cos_cos_full_20260603_152603.dump
