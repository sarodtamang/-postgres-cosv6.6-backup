# Database Restoration Guide - COS v6.6

## Prerequisites
- PostgreSQL 17 installed
- Sufficient disk space
- Database user with create privileges

## Quick Restoration Commands

### Restore Schema Only:
``
psql -U postgres -d new_database -f migrations\schema\public_schema_2026 =Fri.sql
``

### Restore Functions:
``
psql -U postgres -d new_database -f migrations\functions\functions_2026 =Fri.sql
``

### Restore Full Database from Custom Format:
``
pg_restore -U postgres -d new_database -v full_backups\cos_cos_full_2026 =Fri_144303.dump
``

### Complete Database Restore (All Objects):
``
createdb -U postgres cos_v66_new
psql -U postgres -d cos_v66_new -f migrations\schema\public_schema_2026 =Fri.sql
psql -U postgres -d cos_v66_new -f migrations\functions\functions_2026 =Fri.sql
psql -U postgres -d cos_v66_new -f migrations\triggers\triggers_2026 =Fri.sql
psql -U postgres -d cos_v66_new -f migrations\views\views_2026 =Fri.sql
``
