# Fitness Tracker Relational Database 🏋️

A normalised (3NF) MySQL database for a gym fitness tracker app. It records members, the workouts they do, and every set of every exercise (reps and weight). 

## About the Project
Many gym-goers track workouts in a notes app or on paper, which makes it hard to compare performance over the months. This database stores that history in a structured way so progress can be queried and compared. It covers workout tracking only, so payments and class bookings are out of scope.

## Database Design
The database has four tables, all in third normal form (3NF).

erDiagram
    MEMBER ||--o{ WORKOUT : does
    WORKOUT ||--|{ WORKOUTEXERCISE : contains
    EXERCISE ||--o{ WORKOUTEXERCISE : "appears in"


| Table | Purpose |
|---|---|
| `member` | Gym members: name, height, join date, membership type |
| `workout` | One row per workout, linked to a member |
| `exercise` | Catalogue of exercises: muscle group and equipment |
| `workoutexercise` | Associative table with one row per set. Resolves the many-to-many relationship between workouts and exercises |

**Key design decisions**
- `workoutexercise` uses a composite primary key of `(WorkoutID, ExerciseID, SetNumber)`, since one exercise can have many sets in a workout.
- Foreign keys enforce referential integrity: a workout can't exist without a member, and a set can't exist without a workout and an exercise.
- Names are not used as keys because they can change or be duplicated.

## Normalisation
The data was normalised in four stages (UNF → 1NF → 2NF → 3NF):
1. **1NF:** split multivalued cells so each row is one set.
2. **2NF:** removed partial dependencies by moving exercise details into `exercise` and workout details into `workout`.
3. **3NF:** removed transitive dependencies by moving member details into `member`.

This removes redundancy, so each fact is stored once and update, insert and delete anomalies are avoided.

## Data Import
All sample data starts in one CSV file (one row per set), which is loaded into a staging table (`import_data`) with `LOAD DATA INFILE`. It is then copied into the normalised tables with `INSERT INTO ... SELECT DISTINCT`, in this order so foreign keys are satisfied:

`member` → `exercise` → `workout` → `workoutexercise`

| Table | Rows |
|---|---|
| import_data | 45 |
| member | 11 |
| exercise | 11 |
| workout | 11 |
| workoutexercise | 43 |

## Example Queries
The report includes six queries:

| # | Feature | What it does |
|---|---|---|
| 1 | `LIKE` | Finds all members with the surname Watterson |
| 2 | `JOIN` | Lists each workout with the member's name |
| 3 | `>` | Finds workouts longer than 55 minutes |
| 4 | `GROUP BY` | Counts sets and average weight per exercise |
| 5 | `IN` | Finds members on Premium or Student plans |
| 6 | `UPDATE` | Upgrades three members to Premium |

Example, total sets and average weight per exercise:
```sql
SELECT e.ExerciseName,
       COUNT(*) AS TotalSets,
       ROUND(AVG(we.Weight), 1) AS AvgWeight
FROM workoutexercise we
JOIN exercise e ON we.ExerciseID = e.ExerciseID
GROUP BY e.ExerciseID, e.ExerciseName
ORDER BY TotalSets DESC, e.ExerciseName;
```

## How to Run
Requires MySQL (InnoDB) and phpMyAdmin, e.g. through WampServer.

1. Clone the repo:
   `git clone https://github.com/avienavien/fitness-tracker-simple-database.git`
2. Create a new database in phpMyAdmin.
3. Run the table creation script `[create_tables.sql]`.
4. Put `fitness_data.csv` somewhere MySQL can read it and update the file path in the `LOAD DATA INFILE` statement (the original used `C:/wamp64/tmp/`).
5. Run the import script `[import_data.sql]` to fill the staging table and the normalised tables.
6. Run `[queries.sql]` to try the example queries.

## Limitations and Future Work
Automatically detecting personal records (heaviest weight or most reps for an exercise) is awkward in pure SQL. It needs nested queries or self-joins across all four tables, and gets slower as workout history grows. A real app would handle this in application code, such as Python or Java.

## Tools
MySQL 8.4 · phpMyAdmin · WampServer · LaTeX (IEEE report)

## Author
Avien Maralit· https://github.com/avienavien
