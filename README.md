# Database exercises

SQL exercises and database designs from my computer science studies (SQLite).

| Path | Content |
|---|---|
| `lotr-database/` | *Lord of the Rings* database: characters, places, battles and participation. Contains `install.sql` (schema and sample data), `insert.sql`, `select.sql` (queries), `changes.sql` (ring ownership history) and `chapters.sql` |
| `fitnesstudio.sql` | Gym database: members, payments, notifications and yearly fee handling, with query exercises |
| `medical_praxis.sql` / `medical_praxis.db` | Medical practice database: patients, doctors, appointments, invoices, waiting list, with query exercises |

## Usage

```bash
sqlite3 fitnesstudio.db < fitnesstudio.sql
sqlite3 lotr.db < lotr-database/install.sql
```

The `.db` file in this repository is the ready-made SQLite database of the medical practice example.
