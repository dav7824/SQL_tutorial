# MySQL tutorial
Code transcripted from the YouTube tutorial: [__SQL Tutorial - Full Database Course for Beginners__](https://www.youtube.com/watch?v=HXV3zeQKqGY)
- [Company database code](https://www.mikedane.com/databases/sql/creating-company-database/)


## ER diagram intro
ER = Entity relationship

- __Entity (square):__ An object we want to model & store information about.
- __Attribute (oval):__ Specific information about an entity.
- __Primary key:__ An attribute which uniquely identifies each entry in the table.
- __Composite attribute:__ An attribute which can be broken up into several sub-attributes.
- __Multi-valued attribute__
- __Derived attribute:__ An attibute which can be derived from the other attributes.
- __Multiple entities__
- __Relationship (diamond):__
    - __Total relationship (double lines):__ All members must participate in the relationship.
    - __Partial relationship (single line)__
- __Relationship attribute:__ An attribute about the relationship.
- __Relationship cardinality:__ The number of instances of an entity from a relation that can be associated with the relation. (1:1, 1:N, N:M)
- __Weak entity:__ An entity that cannot be uniquely identified by its attributes alone.
- __Identifying relationship:__ A relationship that serves to uniquely identify the weak entity.


## Converting an ER diagram to a database schema

1. __Mapping of regular entity types__:
For each regular entity type, create a relation (table) that includes all the simple attributes of that entity.
1. __Mapping of weak entity types__:
For each weak entity type, create a relation (talbe) that includes all the simple attributes of that weak entity. The primary key of the new relation should be the partial key of the weak entity plus the primary key of its owner.
1. __Mapping of the binary 1:1 relationship types__:
Include one side of the relationship as a foreign key in the other. (Favor total participation)
1. __Mapping of the binary 1:N relationship types__:
Include the 1 side's primary key as a foreign key on the N side relation (table).
1. __Mapping of the binary M:N relationship types__:
Create a new relation (table) whose primary key is a combination of both entities' primary keys. Also include any relationship attributes.

