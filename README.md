# MySQL tutorial
Code transcripted from the YouTube tutorial: [__SQL Tutorial - Full Database Course for Beginners__](https://www.youtube.com/watch?v=HXV3zeQKqGY)
- [Company database code](https://www.mikedane.com/databases/sql/creating-company-database/)


## ER diagram intro
ER = Entity relationship

- _Entity (square):_  
An object we want to model & store information about.
- _Attribute (oval):_  
Specific information about an entity.
- _Primary key:_  
An attribute which uniquely identifies each entry in the table.
- _Composite attribute:_  
An attribute which can be broken up into several sub-attributes.
- _Multi-valued attribute_
- _Derived attribute:_  
An attibute which can be derived from the other attributes.
- _Multiple entities_
- _Relationship (diamond):_
    - _Total relationship (double lines):_  
    All members must participate in the relationship.
    - _Partial relationship (single line)_
- _Relationship attribute:_  
An attribute about the relationship.
- _Relationship cardinality:_  
The number of instances of an entity from a relation that can be associated with the relation. (1:1, 1:N, N:M)
- _Weak entity:_  
An entity that cannot be uniquely identified by its attributes alone.
- _Identifying relationship:_  
A relationship that serves to uniquely identify the weak entity.


## Steps to convert an ER diagram to a database schema

1. __Mapping of regular entity types__  
For each regular entity type, create a relation (table) that includes all the simple attributes of that entity.
1. __Mapping of weak entity types__  
For each weak entity type, create a relation (talbe) that includes all the simple attributes of that weak entity. The primary key of the new relation should be the partial key of the weak entity plus the primary key of its owner.
1. __Mapping of the binary 1:1 relationship types__  
Include one side of the relationship as a foreign key in the other. (Favor total participation)
1. __Mapping of the binary 1:N relationship types__  
Include the 1 side's primary key as a foreign key on the N side relation (table).
1. __Mapping of the binary M:N relationship types__  
Create a new relation (table) whose primary key is a combination of both entities' primary keys. Also include any relationship attributes.

