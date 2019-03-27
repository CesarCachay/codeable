# Exercises [day 1](https://github.com/ableco/code-school/blob/master/modules/2/mini-assignments/0325-database-overview.md) and [day 2](https://github.com/ableco/code-school/blob/master/modules/2/mini-assignments/0326-sql-data-modeling.md)

In any folder from this directory, create the respective database, for example  for directory university:

```sh
$ createdb university
$ psql university < university.sql # create tables and relations in database university
$ ruby faker.rb # generate seed.sql with data faker
$ psql university < seed.sql # load data faker from seed.sql to database
```
