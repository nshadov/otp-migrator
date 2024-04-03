# OTP Manual Migrator

This script asks for OTP seed and displays OTP in a loop to support one-by-one manual migration of OTP codes.

## How to migrate (on `Authenticator Plus` example)

1. Export database from the app (`Authenticator Plus` supports Dropbox backup).
2. Open the database in database reader (`Authenticator Plus` uses SQLite database with SQLCipher encryption - popular solution on Android. It could easily be opened using [SQLiteBrowser](https://sqlitebrowser.org))
3. List OTP codes. I have used this SQL statement:

```sql
SELECT email, secret FROM accounts;
```

4. Copy the OTP seeds one by one to the prompt from `qrcodeme.sh` to show QR code that could be scanned by other application.
5. Purge database backup from disk (Linux `shred` or Windows SysInternals `sdelete`).