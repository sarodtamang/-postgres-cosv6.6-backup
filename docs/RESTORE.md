# Database Restoration Guide - COS v6.6

## Prerequisites
- PostgreSQL 17 installed
- Sufficient disk space
- Database user with create privileges

## Quick Restoration Commands

### Restore Schema Only:
``
psql -U postgres -d new_database -f migrations\schema\public_schema_~0,4datetime:~4,2datetime:~6,2.sql
``

### Restore Functions:
``
psql -U postgres -d new_database -f migrations\functions\functions_~0,4datetime:~4,2datetime:~6,2.sql
``

### Restore Full Database from Custom Format:
``
pg_restore -U postgres -d new_database -v full_backups\cos_cos_full_~0,4datetime:~4,2datetime:~6,2datetime:~8,2%datetime:~10,2%datetime:~12,2.dump
``

### Complete Database Restore (All Objects):
``
createdb -U postgres cos_v66_new
psql -U postgres -d cos_v66_new -f migrations\schema\public_schema_~0,4datetime:~4,2datetime:~6,2.sql
psql -U postgres -d cos_v66_new -f migrations\functions\functions_~0,4datetime:~4,2datetime:~6,2.sql
psql -U postgres -d cos_v66_new -f migrations\triggers\triggers_~0,4datetime:~4,2datetime:~6,2.sql
psql -U postgres -d cos_v66_new -f migrations\views\views_~0,4datetime:~4,2datetime:~6,2.sql
``
